package com.wjj.commons;

import java.util.Date;

/**
 * @author 作者：wangjj
 * @version 创建时间：2017-01-18 17:54
 * @discription 类说明：这个类是一个基础类
 */
public class BaseEntity {
    private Long id;
    private Date insertTime;
    private Date updateTime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getInsertTime() {
        return insertTime;
    }

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}
