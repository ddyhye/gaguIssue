package ko.gagu.issue.config;

import java.util.Properties;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

@Configuration
public class MailConfig {

    @Value("${spring.mail.storeprotocol}")
    private String storeProtocol;

    @Value("${spring.mail.imap.host}")
    private String host;

    @Value("${spring.mail.imap.port}")
    private int port;

    @Value("${spring.mail.imap.username}")
    private String username;

    @Value("${spring.mail.imap.password}")
    private String password;

    @Value("${spring.mail.imap.auth}")
    private boolean auth;

    @Value("${spring.mail.imap.starttls.enable}")
    private boolean starttlsEnable;

    @Value("${spring.mail.imap.ssl.enable}")
    private boolean sslEnable;


    public String getStoreProtocol() {
        return storeProtocol;
    }

    public void setStoreProtocol(String storeProtocol) {
        this.storeProtocol = storeProtocol;
    }

    public String getHost() {
        return host;
    }

    public void setHost(String host) {
        this.host = host;
    }

    public int getPort() {
        return port;
    }

    public void setPort(int port) {
        this.port = port;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isAuth() {
        return auth;
    }

    public void setAuth(boolean auth) {
        this.auth = auth;
    }

    public boolean isStarttlsEnable() {
        return starttlsEnable;
    }

    public void setStarttlsEnable(boolean starttlsEnable) {
        this.starttlsEnable = starttlsEnable;
    }

    public boolean isSslEnable() {
        return sslEnable;
    }

    public void setSslEnable(boolean sslEnable) {
        this.sslEnable = sslEnable;
    }
}