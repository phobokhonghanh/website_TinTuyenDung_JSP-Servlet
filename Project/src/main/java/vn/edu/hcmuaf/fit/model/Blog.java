package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;

public class Blog implements Serializable {
    private static final long serialVersionUID = 1L;
    private String blogID;
    private String title;
    private String content;
    private String img;
    private String create_date;
    private String update_date;

    public Blog(String blogID, String title, String content, String img, String create_date, String update_date) {
        this.blogID = blogID;
        this.title = title;
        this.content = content;
        this.img = img;
        this.create_date = create_date;
        this.update_date = update_date;
    }
    public Blog(){

    }
    public String getBlogID() {
        return blogID;
    }

    public void setBlogID(String blogID) {
        this.blogID = blogID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getCreate_date() {
        return create_date;
    }

    public void setCreate_date(String create_date) {
        this.create_date = create_date;
    }

    public String getUpdate_date() {
        return update_date;
    }

    public void setUpdate_date(String update_date) {
        this.update_date = update_date;
    }

    @Override
    public String toString() {
        return "Blog{" +
                "blogID='" + blogID + '\'' +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", img='" + img + '\'' +
                ", create_date='" + create_date + '\'' +
                ", update_date='" + update_date + '\'' +
                '}';
    }
}