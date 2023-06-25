package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.Date;

public class PostApplied implements Serializable {
    private static final long serialVersionUID = 1L;
    private int id;
    private int accountId;
    private int postId;
    private int cvId;
    private Date createDate;

    public PostApplied(){

    }

    @Override
    public String toString() {
        return "PostApplied{" +
                "id=" + id +
                ", accountId=" + accountId +
                ", postId=" + postId +
                ", cvId=" + cvId +
                ", createDate=" + createDate +
                '}';
    }

    public PostApplied(int id, int accountId, int postId, int cvId, Date createDate) {
        this.id = id;
        this.accountId = accountId;
        this.postId = postId;
        this.cvId = cvId;
        this.createDate = createDate;
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

    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public int getCvId() {
        return cvId;
    }

    public void setCvId(int cvId) {
        this.cvId = cvId;
    }

    public java.util.Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(java.util.Date createDate) {
        this.createDate = createDate;
    }
}
