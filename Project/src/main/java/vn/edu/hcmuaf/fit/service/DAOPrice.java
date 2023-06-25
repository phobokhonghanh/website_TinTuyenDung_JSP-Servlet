package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.model.Price;

public class DAOPrice {
    public static DAOPrice daoPrice = null;

    public static DAOPrice getInstance() {
        if (daoPrice == null) {
            daoPrice = new DAOPrice();
        }
        return daoPrice;
    }

    public Price getPrice() {
        String query = "SELECT * FROM price";
        return JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery(query).mapToBean(Price.class).stream().findFirst().get();
        });
    }

    public void updatePrice(String price, String vat) {
        String query = "update price set price = ?, vat = ? , updateDate = now() ";
        try {
            JDBIConnector.get().withHandle(handle ->
                    handle.createUpdate(query)
                            .bind(0, price)
                            .bind(1, vat)
                            .execute()
            );
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
