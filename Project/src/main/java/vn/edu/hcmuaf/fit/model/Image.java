package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.Date;


public class Image implements Serializable {
    private static final long serialVersionUID = 1L;
    private int id;
    private String url;
    private int type;
    private Date createDate;
    private Date updateDate;

    public Image() {
    }

    public Image(int id, String url, int type, Date createDate, Date updateDate) {
        this.id = id;
        this.url = url;
        this.type = type;
        this.createDate = createDate;
        this.updateDate = updateDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    @Override
    public String toString() {
        return "Image{" +
                "id=" + id +
                ", url='" + url + '\'' +
                ", type=" + type +
                ", createDate=" + createDate +
                ", updateDate=" + updateDate +
                '}';
    }
}
