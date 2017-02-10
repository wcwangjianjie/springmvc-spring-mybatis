package com.wjj.system.user.service.imp;

import com.wjj.system.user.dao.UserDao;
import com.wjj.system.user.entity.User;
import com.wjj.system.user.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * @author 作者：wangjj
 * @version 创建时间：2017-01-19 9:31
 * @discription 类说明：用户接口的实现
 */
@Service
public class UserServiceImp implements UserService {

    private static Logger logger = LoggerFactory.getLogger(UserServiceImp.class);

    @Autowired
    private UserDao userDao;

    @Override
    public User getById(long id) {
        User user = userDao.findById(id);
        return user;
    }

    @Override
    public User getByUsername(String username) {
        return null;
    }

    @Override
    public User login(String username, String password) throws Exception {
        logger.info("用户登录：" + username);
        User user = userDao.findByUsername(username);
        if (user == null) {
            logger.info("用户不存在");
            throw new Exception("user is not exist");
        }
        if (!StringUtils.isEmpty(password) && !password.equals(user.getPassword())) {
            logger.info("密码错误");
            throw new Exception("password is wrong");
        }
        logger.info("用户" + username + "登录成功");
        return user;
    }

    @Override
    public List<User> getList(int offset, int limit) {
        return null;
    }
}
