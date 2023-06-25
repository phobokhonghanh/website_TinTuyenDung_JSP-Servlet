package vn.edu.hcmuaf.fit.service.modelQuanLy;

public class QuanLyThongKe {
    private int month;
    private int total;

    public QuanLyThongKe() {
    }

    public QuanLyThongKe(int month, int total) {
        this.month = month;
        this.total = total;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "QuanLyThongKe{" +
                "month=" + month +
                ", total=" + total +
                '}';
    }
}
