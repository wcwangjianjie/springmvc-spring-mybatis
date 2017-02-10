package com.wjj.system.user.entity;

import com.wjj.commons.BaseEntity;

/**
 * @author 作者：wangjj
 * @version 创建时间：2017-1-18 16:57
 * @discription 类说明：用户类
 */
public class User extends BaseEntity {
    private String username;
    private String password;
    private String nickname;
    private String remark;

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

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}
