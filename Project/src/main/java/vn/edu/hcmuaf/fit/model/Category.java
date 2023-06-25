package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.sql.Date;

public class Category implements Serializable {
    private static final long serialVersionUID = 1L;
    private int id;
    private String name;
    private Date createDate;

    public Category() {
    }

    public Category(int id, String name, Date createDate) {
        this.id = id;
        this.name = name;
        this.createDate = createDate;
    }

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", createDate=" + createDate +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
}

