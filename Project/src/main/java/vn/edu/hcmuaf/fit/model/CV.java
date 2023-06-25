package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.Date;

public class CV implements Serializable {

    private int id;
    private String title;
    private int accountId;
    private String name;
    private String rank;
    private String email;
    private String phone;
    private String gen;
    private String address;
    private String salary;
    private String skill;
    private String introduce;
    private String exp;
    private String lv;
    private Date createDate;

    public CV() {

    }

    public CV(int id, int accountId, String title, String name, String rank, String email, String phone, String gen, String address, String salary, String skill, String introduce, String exp, String lv, Date createDate, int daysSinceCreated) {
        this.id = id;
        this.accountId = accountId;
        this.title = title;
        this.name = name;
        this.rank = rank;
        this.email = email;
        this.phone = phone;
        this.gen = gen;
        this.address = address;
        this.salary = salary;
        this.skill = skill;
        this.introduce = introduce;
        this.exp = exp;
        this.lv = lv;
        this.createDate = createDate;
        this.daysSinceCreated = daysSinceCreated;
    }

    @Override
    public String toString() {
        return "CV{" +
                "id=" + id +
                ", accountId=" + accountId +
                ", title='" + title + '\'' +
                ", name='" + name + '\'' +
                ", rank='" + rank + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", gen='" + gen + '\'' +
                ", address='" + address + '\'' +
                ", salary='" + salary + '\'' +
                ", skill='" + skill + '\'' +
                ", interest='" + introduce + '\'' +
                ", exp='" + exp + '\'' +
                ", lv='" + lv + '\'' +
                ", createDate=" + createDate +
                ", daysSinceCreated=" + daysSinceCreated +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getGen() {
        return gen;
    }

    public void setGen(String gen) {
        this.gen = gen;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }

    public String getSkill() {
        return skill;
    }

    public void setSkill(String skill) {
        this.skill = skill;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public String getExp() {
        return exp;
    }

    public void setExp(String exp) {
        this.exp = exp;
    }

    public String getLv() {
        return lv;
    }

    public void setLv(String lv) {
        this.lv = lv;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    private int daysSinceCreated;

    public int getDaysSinceCreated() {
        return daysSinceCreated;
    }

    public void setDaysSinceCreated(int daysSinceCreated) {
        this.daysSinceCreated = daysSinceCreated;
    }


}
