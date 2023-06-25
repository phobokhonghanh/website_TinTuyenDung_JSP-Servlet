package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.control.UtilControl;
import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.model.Log;
import vn.edu.hcmuaf.fit.model.Post;

import javax.sound.sampled.Port;
import java.util.List;
import java.util.stream.Collectors;

public class DAOLog {
    public static DAOLog daoLog = null;

    public static DAOLog getInstance() {
        if (daoLog == null) {
            daoLog = new DAOLog();
        }
        return daoLog;
    }

    public void insert(int level, int userId, String src, String content, int status) {
        String query = "Insert INTO log (`level`, `userId`,`src`,`content`,`createDate`,`status`) VALUES (?,?,?,?,NOW(),?)";
        JDBIConnector.get().withHandle(handle -> handle.createUpdate(query).bind(0, level).bind(1, userId == -1 ? null : userId).bind(2, src).bind(3, content).bind(4, status).execute());
    }

    public int getListLogSize(int id) {
        String query = "SELECT * from log WHERE userId = ? and status = 1 ";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .bind(0, id)
                    .mapToBean(Log.class).stream().collect(Collectors.toList()).size();
        });
    }

    public List<Log> getListLog(int id, int trang) {
        String query = "SELECT * from log WHERE userId = ? and status = 1 ORDER BY  createDate DESC LIMIT 5 OFFSET ? ";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .bind(0, id)
                    .bind(1, (trang - 1) * 5)
                    .mapToBean(Log.class).stream().collect(Collectors.toList());
        });
    }

    public List<Log> getAllListLogAdmin(int id, int trang) {
        List<Log> rs = getListLog(id, trang);
        rs.addAll(getListLogAdmin(trang));
        return rs;
    }

    public int getListLogAdminSize(int id) {
        String query = "SELECT * from log WHERE status = 0 ";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .mapToBean(Log.class).stream().collect(Collectors.toList()).size() + getListLogSize(id);
        });
    }

    public List<Log> getListLogAdmin(int trang) {
        String query = "SELECT * from log WHERE status = 0 ORDER BY  createDate DESC LIMIT 5 OFFSET ?  ";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query)
                    .bind(0, (trang - 1) * 5)
                    .mapToBean(Log.class).stream().collect(Collectors.toList());
        });
    }

    public int getTotalNotification(int idBusi) {
        String query = "SELECT COUNT(*) FROM log where userId = ? and status = 1 ";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, idBusi).mapTo(Integer.class).one();
        });
    }

    public List<Log> getNotificationtAll(int idBusi, int trang) {
        String query = "select * from log where userId = ? and status = 1  ORDER BY  createDate DESC LIMIT 6 OFFSET ?";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).bind(0, idBusi).bind(1, (trang - 1) * 6).mapToBean(Log.class).stream().collect(Collectors.toList());
        });
    }
    public static void main(String[] args) {
    }
}
