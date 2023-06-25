package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.JDBIConnector;
import vn.edu.hcmuaf.fit.model.Company;
import vn.edu.hcmuaf.fit.model.Contact;

import java.util.List;

public class DAOContact {
    public static DAOContact daoContact = null;

    public static DAOContact getInstance() {
        if (daoContact == null) {
            daoContact = new DAOContact();
        }
        return daoContact;
    }

    public void updateContact(String name, String address, String phone, String email) {
        String query = "update contact set name = ?, address = ? , phone = ? , email = ? ";
        try {
            JDBIConnector.get().withHandle(handle ->
                    handle.createUpdate(query)
                            .bind(0, name)
                            .bind(1, address)
                            .bind(2, phone)
                            .bind(3, email)
                            .execute()
            );
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Contact getContact() {
        String query = "select * from contact ";
        return JDBIConnector.get().withHandle(handle -> handle.createQuery(query)
                .mapToBean(Contact.class).stream().findFirst().get());
    }
}

