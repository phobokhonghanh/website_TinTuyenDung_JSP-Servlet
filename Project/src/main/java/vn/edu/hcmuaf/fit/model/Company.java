package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.sql.Date;

public class Company implements Serializable {
    private static final long serialVersionUID = 1L;
    private String id;
    private int imageId;
    private String name;
    private String phone;
    private String address;
    private String description;
    private Date createDate;
    private Date updateDate;

    public Company() {

    }

    public Company(String id, int imageId, String name, String phone, String address, String description, Date createDate, Date updateDate) {
        this.id = id;
        this.imageId = imageId;
        this.name = name;
        this.phone = phone;
        this.address = address;
        this.description = description;
        this.createDate = createDate;
        this.updateDate = updateDate;
    }

    @Override
    public String toString() {
        return "Company{" +
                "id='" + id + '\'' +
                ", imageId='" + imageId + '\'' +
                ", name='" + name + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", description='" + description + '\'' +
                ", createDate=" + createDate +
                ", updateDate=" + updateDate +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getImageId() {
        return imageId;
    }

    public void setImageId(int imageId) {
        this.imageId = imageId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}
