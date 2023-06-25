package vn.edu.hcmuaf.fit.model;

import java.io.Serializable;
import java.util.HashMap;

public class Cart implements Serializable {
    private static final long serialVersionUID = 1L;
    HashMap<Post, String> listPost;
    Account account;
    public Cart() {
    }

    public Cart(HashMap<Post, String> listPost, Account account) {
        this.listPost = listPost;
        this.account = account;
    }

    public HashMap<Post, String> getlistPost() {
        return listPost;
    }

    public void setListProduct(HashMap<Post, String> listPost) {
        this.listPost = listPost;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }
}
