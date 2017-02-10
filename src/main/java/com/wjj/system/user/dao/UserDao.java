package com.wjj.system.user.dao;

import com.wjj.system.user.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author 作者：wangjj
 * @version 创建时间：2017-01-19 9:37
 * @discription 类说明：用户Dao
 */
public interface UserDao {
    User findById(long id);
    User findByUsername(String username);
    List<User> findAll(@Param("offset") int offset, @Param("limit") int limit);
}
