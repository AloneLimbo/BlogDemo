package com.limbo.blog.entity;

import java.util.Date;

/**
 * Created by limbo on 16-10-7.
 */
public class User{

    String ip;

    Date time;

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

}
