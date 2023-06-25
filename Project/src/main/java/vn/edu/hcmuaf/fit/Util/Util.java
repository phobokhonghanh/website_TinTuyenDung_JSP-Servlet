package vn.edu.hcmuaf.fit.Util;

import java.security.MessageDigest;
import java.util.Base64;
import java.util.Random;

public class Util {
    public static String encryptionPassword(String password) {
        String salt = "";
        String rs = null;
        password = password + salt;
        try {
            byte[] data = password.getBytes("UTF-8");
            MessageDigest md = MessageDigest.getInstance("SHA-1");
            rs = Base64.getEncoder().encodeToString(md.digest(data));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }

    public static String randomPassword() {
        Random r = new Random();
        String rs = "";
        for (int i = 0; i < 6; i++) {
            rs += r.nextInt(10);
        }
        return rs;
    }


    public static void main(String[] args) {
        System.out.println(encryptionPassword("@Test123"));
    }
}
