package vn.edu.hcmuaf.fit.model;

import java.util.Date;

public class Price {
    private Integer id;
    private String price;
    private String vat;
    private String current;
    private Date createDate;
    private Date updateDate;

    public Price() {

    }

    public Price(Integer id, String price, String vat, String current, Date createDate, Date updateDate) {
        this.id = id;
        this.price = price;
        this.vat = vat;
        this.current = current;
        this.createDate = createDate;
        this.updateDate = updateDate;
    }

    @Override
    public String toString() {
        return "Price{" +
                "id=" + id +
                ", price='" + price + '\'' +
                ", vat='" + vat + '\'' +
                ", current='" + current + '\'' +
                ", createDate=" + createDate +
                ", updateDate=" + updateDate +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getVat() {
        return vat;
    }

    public void setVat(String vat) {
        this.vat = vat;
    }

    public String getCurrent() {
        return current;
    }

    public void setCurrent(String current) {
        this.current = current;
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
