package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.properties.MailProperties;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

public class MailService {
    public static void sendMail(String to, String subject, String content) {
        Properties pro = MailProperties.getSMTPPro();
        Session session = Session.getInstance(pro,
                new Authenticator() {
                    @Override
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(MailProperties.getMailUsername(), MailProperties.getMailPassword());
                    }
                }
        );
        Message message = new MimeMessage(session);
        try {
            message.setFrom(new InternetAddress(MailProperties.getMailFrom(), MailProperties.getMailName()));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
            message.setSubject(subject);
            message.setText(content);
            Transport.send(message);
        } catch (MessagingException | UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }
}
