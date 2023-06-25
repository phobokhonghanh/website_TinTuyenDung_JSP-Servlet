package vn.edu.hcmuaf.fit.model;

import java.util.Date;

public class Bill {
    public static final int STATUS_NOT_SEEN = 0;
    public static final int STATUS_SEEN = 1;
    private int id;
    private String numAccount;
    private String money;
    private Date createDate;

    private int status;

    public Bill() {
    }

    public Bill(int id, String numAccount, String money, Date createDate, int status) {
        this.id = id;
        this.numAccount = numAccount;
        this.money = money;
        this.createDate = createDate;
        this.status = status;
    }

    @Override
    public String toString() {
        return "Bill{" +
                "id=" + id +
                ", numAccount='" + numAccount + '\'' +
                ", money='" + money + '\'' +
                ", createDate=" + createDate +
                ", status=" + status +
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

}
