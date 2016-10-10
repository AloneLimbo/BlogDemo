package com.limbo.blog.entity;

import java.util.Date;

/**
 * Created by limbo on 16-10-1.
 */
public class Blog {

    long blogId;

    String title;

    String brief;

    String content;

    Date createTime;

    String source;

    int readtimes;

    String img;

    public long getBlogId() {
        return blogId;
    }

    public void setBlogId(long blogId) {
        this.blogId = blogId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getBrief() {
        return brief;
    }

    public void setBrief(String brief) {
        this.brief = brief;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public int getReadtimes() {
        return readtimes;
    }

    public void setReadtimes(int readtimes) {
        this.readtimes = readtimes;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    @Override
    public String toString() {
        return "Blog{" +
                "blogId=" + blogId +
                ", title='" + title + '\'' +
                ", brief='" + brief + '\'' +
                ", content='" + content + '\'' +
                ", createTime=" + createTime +
                ", source='" + source + '\'' +
                ", readtimes=" + readtimes +
                ", img='" + img + '\'' +
                '}';
    }
}
