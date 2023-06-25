package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.model.Company;
import vn.edu.hcmuaf.fit.model.Post;
import vn.edu.hcmuaf.fit.model.PostApplied;
import vn.edu.hcmuaf.fit.service.modelQuanLy.QuanLyThongKe;

import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

public class DAOPost {

    private static Post post = null;

    public static Post getPost() {
        return post;
    }

    public static boolean checkApplied(int postId, int accountId) {
        String query = "SELECT * FROM postApplied where accountId = ? and postId = ?";
        List<PostApplied> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, accountId).bind(1, postId).mapToBean(PostApplied.class).stream().collect(Collectors.toList());
        });

        return list.size() > 0 ? true : false;
    }

    public Date getDateNow() {
        return new Date();
    }

    public List<Post> getPost(int accountId) {
        String query = "SELECT * FROM post WHERE accountId = ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, accountId).mapToBean(Post.class).stream().collect(Collectors.toList());
        });
    }

    public int getTotalPostBusi(int idBusi) {
        String query = "SELECT COUNT(*) FROM post where accountId = ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, idBusi).mapTo(Integer.class).one();
        });
    }

    public List<Post> getPostIdBusi(int idBusi, int trang) {
        String query = "select * from post where accountId = ? ORDER BY  createDate DESC LIMIT 3 OFFSET ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, idBusi).bind(1, (trang - 1) * 3).mapToBean(Post.class).stream().collect(Collectors.toList());
        });
    }

    public List<Post> getPostExpired(int idBusi, int status) {
        String query = "select * from post where accountId = ? and status = ? ORDER BY  endDate DESC LIMIT 8";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, idBusi).bind(1, status).mapToBean(Post.class).stream().collect(Collectors.toList());
        });
    }

    public int getTotalPost(int idBusi) {
        String query = "SELECT COUNT(*) FROM post where accountId = ? and status <> 0";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, idBusi).mapTo(Integer.class).one();
        });
    }

    public int getTotalPost2(int idBusi) {
        String query = "SELECT COUNT(*) FROM post where accountId = ? and status = 2";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, idBusi).mapTo(Integer.class).one();
        });
    }

    public int getTotalPost4(int idBusi) {
        String query = "SELECT COUNT(*) FROM post where accountId = ? and status = 4 ";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, idBusi).mapTo(Integer.class).one();
        });
    }

    public List<Post> getPostIdBill(String billID, int trang) {
        String query = "select * from post where billId = ?  LIMIT 3 OFFSET ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, billID).bind(1, (trang - 1) * 3).mapToBean(Post.class).stream().collect(Collectors.toList());
        });
    }

    public int getTotalPostIdBill(String billID) {
        String query = "SELECT COUNT(*) FROM post where billId = ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, billID).mapTo(Integer.class).one();
        });
    }

    public void updateBill(String billID, int status) {
        String query = "UPDATE bill set status = ? WHERE id = ?";
        JDBIConnector.get().withHandle(handle -> handle.createUpdate(query).bind(0, status).bind(1, billID).execute());
    }

    public Post getPostDetail(int idPost) {
        String query = "select * from post where id = ? ";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, idPost).mapToBean(Post.class).stream().findFirst().get();
        });
    }

    public Company getCompanyFromPost(int idPost) {
        String query = "SELECT c.* FROM company c " + "JOIN account a ON c.id = a.companyId " + "JOIN post p ON a.id = p.accountId " + "WHERE p.id = ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, idPost).mapToBean(Company.class).stream().findFirst().orElse(null);
        });
    }

    public Account getAccountFromPost(int idPost) {
        String query = "SELECT a.* FROM account a " + "JOIN post p ON a.id = p.accountId " + "WHERE p.id = ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, idPost).mapToBean(Account.class).stream().findFirst().orElse(null);
        });
    }

    // lấy danh sách bài viết theo trạng thái
    public List<Post> getPost(int idBusi, int status) {
        String query = "select * from post where accountId = ? and status = ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, idBusi).bind(1, status).mapToBean(Post.class).stream().collect(Collectors.toList());
        });
    }


    public int getPostSearchStatus(String keywords, String status) {
        String query = "select * from post where title LIKE ? and status = ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, "%" + keywords + "%").bind(1, status).mapToBean(Post.class).stream().collect(Collectors.toList()).size();
        });
    }

    public int getPostSearchCategory(String keywords, String categoryId, String status) {
        String query = "select * from post where title LIKE ? and categoryId = ? and status = ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, "%" + keywords + "%").bind(1, categoryId).bind(2, status).mapToBean(Post.class).stream().collect(Collectors.toList()).size();
        });
    }

    public int getPostOfCategoryApprove(String categoryId, String status) {
        String query = "select * from post where categoryId = ? and status = ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, categoryId).bind(1, status).mapToBean(Post.class).stream().collect(Collectors.toList()).size();
        });
    }

    public List<Post> getPostOfCategoryApprove(String categoryId, String status, int trang) {
        String query = "select * from post where categoryId = ? and status = ? LIMIT 5 OFFSET ? ";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, categoryId).bind(1, status).bind(2, (trang - 1) * 5).mapToBean(Post.class).stream().collect(Collectors.toList());
        });
    }


    public List<Post> getPostSearchCategory(String keywords, String categoryId, String status, int trang) {
        String query = "select * from post where title LIKE ? and categoryId = ? and status = ? ORDER BY createDate DESC LIMIT 5 OFFSET ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, "%" + keywords + "%").bind(1, categoryId).bind(2, status).bind(3, (trang - 1) * 5).mapToBean(Post.class).stream().collect(Collectors.toList());
        });
    }

    public int getPostSearchApprove(String keywords, String status) {
        String query = "select * from post where title LIKE ? and status = ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, "%" + keywords + "%").bind(1, status).mapToBean(Post.class).stream().collect(Collectors.toList()).size();
        });
    }

    public List<Post> getPostSearchApprove(String keywords, String status, int trang) {
        String query = "select * from post where title LIKE ? and status = ?ORDER BY createDate DESC LIMIT 5 OFFSET ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, "%" + keywords + "%").bind(1, status).bind(2, (trang - 1) * 5).mapToBean(Post.class).stream().collect(Collectors.toList());
        });
    }

    public int getPostSearch(String keywords) {
        String query = "select * from post where title LIKE ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, "%" + keywords + "%").mapToBean(Post.class).stream().collect(Collectors.toList()).size();
        });
    }

    public List<Post> getPostSearchStatus(String keywords, String status, int trang) {
        String query = "select * from post where title LIKE ? and status = ? ORDER BY createDate DESC LIMIT 5 OFFSET ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, "%" + keywords + "%").bind(1, status).bind(2, (trang - 1) * 5).mapToBean(Post.class).stream().collect(Collectors.toList());
        });
    }

    public List<Post> getPostSearch(String keywords, int trang) {
        String query = "select * from post where title LIKE ? ORDER BY createDate DESC LIMIT 5 OFFSET ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, "%" + keywords + "%").bind(1, (trang - 1) * 5).mapToBean(Post.class).stream().collect(Collectors.toList());
        });
    }


    // xoa post
    public void deletePost(String idPost) {
        String query = "DELETE FROM post WHERE id=?;";
        JDBIConnector.get().withHandle(handle -> handle.createUpdate(query).bind(0, idPost).execute());
    }

    // update trạng thái cho bài viết
    public void updatePost(Integer idPost, int status) {
        String query = "UPDATE post set status = ? WHERE id = ?";
        JDBIConnector.get().withHandle(handle -> handle.createUpdate(query).bind(0, status).bind(1, idPost).execute());
    }

    public void updatePostEndDate() {
        String query = "UPDATE post set status = 4 WHERE post.endDate < CURDATE()";
        JDBIConnector.get().withHandle(handle -> handle.createUpdate(query).execute());
    }

    // update trạng thái cho bài viết và thêm idBill
    public void updatePost(Integer idPost, int status, int idBill) {
        String query = "UPDATE post set status = ?, billId = ? WHERE id = ?";
        JDBIConnector.get().withHandle(handle -> handle.createUpdate(query).bind(0, status).bind(1, idBill).bind(2, idPost).execute());
    }


    // thêm bài viết vào csdl
    public boolean insertPost(String categoryId, String title, String quantity, String salary, String address, String type, String rank, String gen, String description, String rights, String request, int status, Date endDate) {
        int accountId = DAOAccount.getAccount().getId();
        String query = "INSERT INTO `post` (`categoryId`, `accountId`, `title`, `quantity`, `salary`, `address`, `type`, `rank`, `gen`," + " `description`, `rights`, `request`, `status`, `createDate`, `endDate`, `billId`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

        JDBIConnector.get().withHandle(handle -> handle.createUpdate(query).bind(0, categoryId).bind(1, accountId).bind(2, title).bind(3, quantity).bind(4, salary).bind(5, address).bind(6, type).bind(7, rank).bind(8, gen).bind(9, description).bind(10, rights).bind(11, request).bind(12, status).bind(13, getDateNow()).bind(14, endDate).bind(15, (String) null).execute());
        return true;
    }


    public Object getPostDetails(String postID) {
        String query = "select * from post where postID = ?";
        List<Post> listPost = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, postID).mapToBean(Post.class).stream().collect(Collectors.toList());
        });
        return listPost.get(0);
    }

    public List<Post> getPostAll(int trang) {
        String query = "SELECT * FROM post WHERE status <> ? ORDER BY createDate DESC LIMIT 5 OFFSET ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, Post.status_unpaid).bind(1, (trang - 1) * 5).mapToBean(Post.class).stream().collect(Collectors.toList());
        });
    }

    public int getTotalPostPaid() {
        String query = "SELECT COUNT(*) FROM post WHERE status <> 0";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).mapTo(Integer.class).one();
        });
    }

    public int getPostAllApproveSize() {
        String query = "SELECT * FROM post WHERE status = ? ";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, Post.status_approve)
                    .mapToBean(Post.class).stream().collect(Collectors.toList()).size();
        });
    }

    public List<Post> getPostAllApprove(int trang) {
        String query = "SELECT * FROM post WHERE status = ? LIMIT 5 OFFSET ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, Post.status_approve).bind(1, (trang - 1) * 5).mapToBean(Post.class).stream().collect(Collectors.toList());
        });
    }

    public List<Post> getPostApprove() {
        String query = "select * from post where status = ?";
        List<Post> listPost = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, Post.status_approve).mapToBean(Post.class).stream().collect(Collectors.toList());
        });
        return listPost;
    }

    public List<Post> getPostApproveTop5() {
        String query = "select * from post where status = ?  LIMIT 5 ";
        List<Post> listPost = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, Post.status_approve).mapToBean(Post.class).stream().collect(Collectors.toList());
        });
        return listPost;
    }

    public List<Post> getPostAllTop5() {
        String query = "SELECT * FROM post LIMIT 3;";
        List<Post> listPost = null;
        listPost = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).mapToBean(Post.class).stream().collect(Collectors.toList());
        });
        return listPost;
    }


    public List<Post> getPostCreateNew() {
        String query = "SELECT * FROM post ORDER BY createDate DESC LIMIT 5;";
        List<Post> listPost = null;
        listPost = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).mapToBean(Post.class).stream().collect(Collectors.toList());
        });
        return listPost;
    }

    public List<Post> getPostofCategoryByID(int categoryId) {
        String query = "select * from post where categoryId = ? and status = 2";
        List<Post> listPost = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, categoryId).mapToBean(Post.class).stream().collect(Collectors.toList());
        });
        return listPost;
    }


    public String getCompanyName(String companyID) {
        String rs = null;
        String query = "select * from company where id = ?";
        List<Company> listCompany = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, companyID).mapToBean(Company.class).stream().collect(Collectors.toList());
        });
        for (Company c : listCompany) {
            if (companyID.equals(c.getId())) {
                rs = c.getName();
            }
        }
        return rs;
    }

    public Company getCompanyByUsername(String username) {
        String rs = null;
        String query = "select * from company where id = (select companyId from account where username = ?)";
        return JDBIConnector.get().withHandle(handle -> handle.createQuery(query).bind(0, username).mapToBean(Company.class).stream().findFirst().get());
    }

    public String getAddressByCompanyID(String companyID) {
        String rs = null;
        String query = "select * from address where addressID = (select addressID from company where companyID = ?)";
        List<Company> companies = JDBIConnector.get().withHandle(handle -> handle.createQuery(query).bind(0, companyID).mapToBean(Company.class).list());
        return companies.get(0).getName();
    }

    public List<Post> getPostNew() {
        String query = "select * from post where status = ? and DAY(createDate) = DAY(NOW())";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, Post.status_paided).mapToBean(Post.class).stream().collect(Collectors.toList());
        });
    }

    public int[] baiVietNam(String nam) {
        int[] rs = new int[12];
        String query = "SELECT MONTH(createDate) month , COUNT(id) total FROM post\n" +
                " WHERE YEAR(createDate) = ?\n" +
                "   GROUP BY MONTH(createDate)";
        List<QuanLyThongKe> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .bind(0, nam)
                    .mapToBean(QuanLyThongKe.class)
                    .collect(Collectors.toList());
        });
        for (int i = 0; i < 12; ++i) {
            rs[i] = 0;
            for (int j = 0; j < list.size(); j++) {
                if (i == list.get(j).getMonth()) {
                    rs[i - 1] = list.get(j).getTotal();
                    break;
                }
            }
        }
        return rs;
    }

    public int[] getTotalPostWeek() {
        int[] rs = new int[7];
        String query = " SELECT IFNULL(total,0) total  \n" + "FROM (  \n" + " SELECT 'Monday' AS day UNION   \n" + " SELECT 'Tuesday' UNION   \n" + " SELECT 'Wednesday' UNION  \n" + " SELECT 'Thursday' UNION  \n" + " SELECT 'Friday' UNION  \n" + " SELECT 'Saturday' UNION   \n" + " SELECT 'Sunday') d   \n" + "LEFT JOIN (SELECT DAYNAME(createDate) day, COUNT(id) total FROM post\n" + "WHERE createDate >= CURDATE() - INTERVAL WEEKDAY(CURDATE()) DAY AND createDate <= CURDATE()    \n" + " GROUP BY day) p ON d.day = p.day\n" + "ORDER BY FIND_IN_SET(d.day,'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday')  ";
        return getInts(rs, query);
    }

    public static int[] getTotalPostWeekBusi(int id) {
        int[] rs = new int[7];
        String query = " SELECT IFNULL(total,0) total  \n" + "FROM (  \n" + " SELECT 'Monday' AS day UNION   \n" + " SELECT 'Tuesday' UNION   \n" + " SELECT 'Wednesday' UNION  \n" + " SELECT 'Thursday' UNION  \n" + " SELECT 'Friday' UNION  \n" + " SELECT 'Saturday' UNION   \n" + " SELECT 'Sunday') d   \n" + "LEFT JOIN (SELECT DAYNAME(createDate) day, COUNT(id) total FROM post\n" + "WHERE createDate >= CURDATE() - INTERVAL WEEKDAY(CURDATE()) DAY AND createDate <= CURDATE() AND accountId = ?  \n" + " GROUP BY day) p ON d.day = p.day\n" + "ORDER BY FIND_IN_SET(d.day,'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday')  ";
        List<Integer> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, id).mapTo(Long.class).map(l -> l.intValue()).stream().collect(Collectors.toList());
        });
        for (int i = 0; i < list.size(); i++) {
            rs[i] = list.get(i);
        }
        return rs;
    }

    public static int[] getTotalPostPreviousWeekBusi(int id) {
        int[] rs = new int[7];
        String query = " SELECT IFNULL(total,0) total  \n" + "FROM (  \n" + " SELECT 'Monday' AS day UNION   \n" + " SELECT 'Tuesday' UNION   \n" + " SELECT 'Wednesday' UNION  \n" + " SELECT 'Thursday' UNION  \n" + " SELECT 'Friday' UNION  \n" + " SELECT 'Saturday' UNION   \n" + " SELECT 'Sunday') d   \n" + "LEFT JOIN (SELECT DAYNAME(createDate) day, COUNT(id) total FROM post\n" + "WHERE \n" +
                "   WEEK(createDate, 1) =\n" +
                "   WEEK(CURDATE() - INTERVAL 1 WEEK, 1)   AND accountId = ? \n" + " GROUP BY day) p ON d.day = p.day\n" + "ORDER BY FIND_IN_SET(d.day,'Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday')  ";
        List<Integer> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, id).mapTo(Long.class).map(l -> l.intValue()).stream().collect(Collectors.toList());
        });
        for (int i = 0; i < list.size(); i++) {
            rs[i] = list.get(i);
        }
        return rs;
    }

    private int[] getInts(int[] rs, String query) {
        List<Integer> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).mapTo(Long.class).map(l -> l.intValue()).stream().collect(Collectors.toList());
        });
        for (int i = 0; i < list.size(); i++) {
            rs[i] = list.get(i);
        }
        return rs;
    }

    public List<Post> getPostApplied(int idAccount) {
        String query = "SELECT p.*  FROM postApplied pa JOIN account a ON pa.accountId=a.id JOIN post p ON pa.postId=p.id WHERE a.id=?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, idAccount).mapToBean(Post.class).stream().collect(Collectors.toList());
        });
    }

    public List<PostApplied> getPostAllApplied() {
        String query = "select * from postApplied";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).mapToBean(PostApplied.class).stream().collect(Collectors.toList());
        });
    }

    //ngày hiện tại - ngày tạo
    public long dateToCreate(Date dateCreate) {
        Date date = new Date();

        long getDaysDiff = 0;
        try {
            long getDiff = date.getTime() - dateCreate.getTime();
            getDaysDiff = getDiff / (24 * 60 * 60 * 1000);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return getDaysDiff;
    }

    //ngày kết thúc - ngày hiện tại
    public long dateToDeadline(Date deadline) {
        Date date = new Date();
        long getDaysDiff = 0;
        try {
            long getDiff = deadline.getTime() - date.getTime();
            getDaysDiff = getDiff / (24 * 60 * 60 * 1000);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return getDaysDiff;
    }


    public static void main(String[] args) {

    }
}
