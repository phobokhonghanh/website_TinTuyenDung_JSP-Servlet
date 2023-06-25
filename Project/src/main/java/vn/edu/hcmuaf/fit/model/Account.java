package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.sql.Date;

public class Account implements Serializable {
    public static final int ADMIN = 0;
    public static final int CANDIDATE = 1;
    public static final int BUSINESS = 2;
    public static final int ACTIVATED = 1;
    public static final int LOCK = 2;
    private static final long serialVersionUID = 1L;
    private int id;
    private int companyId;
    private String email;
    private String username;
    private String password;
    private String name;
    private int type;
    private int role;
    private int status;
    private Date createDate;
    private Date updateDate;

    public Account() {

    }

    public Account(String email, String username, String name, int role, int status) {
        this.email = email;
        this.username = username;
        this.name = name;
        this.role = role;
        this.status = status;
    }

    public Account(int id, int companyId, String email, String username, String password, String name, int type, int role, int status, Date create_date, Date update_date) {
        this.id = id;
        this.companyId = companyId;
        this.email = email;
        this.username = username;
        this.password = password;
        this.name = name;
        this.type = type;
        this.role = role;
        this.status = status;
        this.createDate = create_date;
        this.updateDate = update_date;
    }

    public static void main(String[] args) {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCompanyId() {
        return companyId;
    }

    public void setCompanyId(int companyId) {
        this.companyId = companyId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
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

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", companyId='" + companyId + '\'' + ", email='" + email + '\'' + ", username='" + username + '\'' + ", password='" + password + '\'' + ", name='" + name + '\'' + ", type=" + type + ", role=" + role + ", status=" + status + ", create_date=" + createDate + ", update_date=" + updateDate + '}';
    }

    public String getNameRole(int role) {
        if (role == ADMIN) {
            return "ADMIN";
        }
        if (role == CANDIDATE) {
            return "CANDIDATE";
        }
        return "BUSINESS";
    }

    public String getNameStatus(int status) {
        if (status == ACTIVATED) {
            return "ACTIVATED";
        }
        if (status == LOCK) {
            return "LOCK";
        }
        return "NOT ACTIVATED";
    }

    private Company company;

    public Company getCompany() {
        return company;
    }

    public void setCompany(Company company) {
        this.company = company;
    }
}
