package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.model.Category;

import java.util.List;
import java.util.stream.Collectors;

public class DAOCategory {
    public static DAOCategory daoCategory = null;

    public static DAOCategory getInstance() {
        if (daoCategory == null) {
            daoCategory = new DAOCategory();
        }
        return daoCategory;
    }

    public void insertCategory(String category) {
        String query = "INSERT INTO category (name, createDate) VALUES ( ?, now()) ";
        boolean check = false;
        for (Category c : getCategoryAll()) {
            if (c.getName().equals(category)) {
                check = true;
                break;
            }
        }
        if (!check) {
            try {
                JDBIConnector.get().withHandle(handle ->
                        handle.createUpdate(query)
                                .bind(0, category)
                                .execute()
                );
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

    }

    public List<Category> getCategoryAll() {
        String query = "select * from category";
        List<Category> listCategory = null;
        listCategory = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).mapToBean(Category.class).stream().collect(Collectors.toList());
        });

        return listCategory;
    }
}
