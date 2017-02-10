package com.wjj.system.user.service;

import com.wjj.system.user.entity.User;

import java.util.List;

/**
 * @author 作者：wangjj
 * @version 创建时间：2017-01-19 9:30
 * @discription 类说明：用户接口
 */
public interface UserService {
    User getById(long id);
    User getByUsername(String username);
    User login(String username, String password) throws Exception;
    List<User> getList(int offset, int limit);
}
