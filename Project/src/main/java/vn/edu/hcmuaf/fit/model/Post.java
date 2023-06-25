package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.Date;

public class Post implements Serializable {
    private static final long serialVersionUID = 1L;
    public static final int status_unpaid = 0; // chua thanh toan
    public static final int status_paided = 1;// da thanh toan
    public static final int status_approve = 2; //  duyet
    public static final int status_lock = 3; //  khoa
    public static final int status_Outdate = 4; // het han
    private int id;
    private int categoryId;
    private int accountId;
    private String title;
    private String quantity;
    private String salary;
    private String address;
    private String type;
    private String rank;
    private String gen;
    private String description;
    private String rights;
    private String request;
    private int status;
    private Date createDate;
    private Date endDate;
    private int billId;

    public Post() {

    }

    public Post(int id, int categoryId, int accountId, String title, String quantity, String salary,
                String address, String type, String rank, String gen, String description, String rights,
                String request, int status, java.util.Date createDate, java.util.Date endDate, int billId) {
        this.id = id;
        this.categoryId = categoryId;
        this.accountId = accountId;
        this.title = title;
        this.quantity = quantity;
        this.salary = salary;
        this.address = address;
        this.type = type;
        this.rank = rank;
        this.gen = gen;
        this.description = description;
        this.rights = rights;
        this.request = request;
        this.status = status;
        this.createDate = createDate;
        this.endDate = endDate;
        this.billId = billId;
    }

    public int getBillId() {
        return billId;
    }

    public void setBillId(int billId) {
        this.billId = billId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank;
    }

    public String getGen() {
        return gen;
    }

    public void setGen(String gen) {
        this.gen = gen;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getRights() {
        return rights;
    }

    public void setRights(String rights) {
        this.rights = rights;
    }

    public String getRequest() {
        return request;
    }

    public void setRequest(String request) {
        this.request = request;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public java.util.Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(java.util.Date createDate) {
        this.createDate = createDate;
    }

    public java.util.Date getEndDate() {
        return endDate;
    }

    public void setEndDate(java.util.Date endDate) {
        this.endDate = endDate;
    }

    @Override
    public String toString() {
        return "Post{" +
                "id=" + id +
                ", categoryId=" + categoryId +
                ", accountId=" + accountId +
                ", title='" + title + '\'' +
                ", quantity='" + quantity + '\'' +
                ", salary='" + salary + '\'' +
                ", address='" + address + '\'' +
                ", type='" + type + '\'' +
                ", rank='" + rank + '\'' +
                ", gen='" + gen + '\'' +
                ", description='" + description + '\'' +
                ", rights='" + rights + '\'' +
                ", request='" + request + '\'' +
                ", status=" + status +
                ", createDate=" + createDate +
                ", endDate=" + endDate +
                ", billId=" + billId +
                '}';
    }
}

