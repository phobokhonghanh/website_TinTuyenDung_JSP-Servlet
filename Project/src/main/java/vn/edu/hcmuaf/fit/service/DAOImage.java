package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.model.Image;

import java.util.List;

public class DAOImage {
    private static List<Image> imageList = null;

    public static List<Image> listImage() {
        String query = "select * from image";
        imageList = JDBIConnector.get().withHandle(handle -> handle.createQuery(query)
                .mapToBean(Image.class).list());
        return imageList;
    }

    public static String getURL(int idImage) {
        String query = "SELECT url FROM image WHERE id = ?";
        return JDBIConnector.get().withHandle(handle -> handle.createQuery(query)
                .bind(0, idImage)
                .mapTo(String.class).stream().findFirst().get());
    }

    public static void main(String[] args) {
    }
}
