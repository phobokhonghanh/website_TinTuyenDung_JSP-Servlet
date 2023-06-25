package vn.edu.hcmuaf.fit.service.modelQuanLy;

import java.util.Date;


public class QuanLyDoanhThu {
    private int id;
    private String numAccount;
    private String money;
    private Date createDate;
    private int accountId;
    private int status;
    private String name;
    private int soBai;

    public QuanLyDoanhThu() {
    }

    public QuanLyDoanhThu(int id, String numAccount, String money, Date createDate, int accountId, int status, String name, int soBai) {
        this.id = id;
        this.numAccount = numAccount;
        this.money = money;
        this.createDate = createDate;
        this.accountId = accountId;
        this.status = status;
        this.name = name;
        this.soBai = soBai;
    }

    @Override
    public String toString() {
        return "QuanLyDoanhThu{" +
                "id=" + id +
                ", numAccount='" + numAccount + '\'' +
                ", money='" + money + '\'' +
                ", createDate=" + createDate +
                ", accountId=" + accountId +
                ", status=" + status +
                ", name='" + name + '\'' +
                ", soBai=" + soBai +
                '}';
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNumAccount() {
        return numAccount;
    }

    public void setNumAccount(String numAccount) {
        this.numAccount = numAccount;
    }

    public String getMoney() {
        return money;
    }

    public void setMoney(String money) {
        this.money = money;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getSoBai() {
        return soBai;
    }

    public void setSoBai(int soBai) {
        this.soBai = soBai;
    }
}
