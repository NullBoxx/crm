package com.bk.crm.settings.service.impl;

import com.bk.crm.exception.LoginException;
import com.bk.crm.settings.dao.UserDao;
import com.bk.crm.settings.domain.User;
import com.bk.crm.settings.service.UserService;
import com.bk.crm.utils.DateTimeUtil;
import com.bk.crm.utils.SqlSessionUtil;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @program: bjpowernodeProject-CRM
 * @description:
 * @author: Mr.Chen
 * @create: 2022-02-16 15:09:12
 **/

public class UserServiceImpl implements UserService {

    private UserDao userDao = SqlSessionUtil.getSqlSession().getMapper(UserDao.class);

    @Override
    public User login(String loginAct, String loginPwd, String ip) throws LoginException {

        Map<String, String> map = new HashMap<>();
        map.put("loginAct", loginAct);
        map.put("loginPwd", loginPwd);

        User user = userDao.login(map);

        if (user == null) {

            throw new LoginException("账号密码错误");

        }

//        如果程序能够执行到该行, 说明账号密码正确
//        需要继续向下验证其他三项信息

//        验证失效时间
        String expireTime = user.getExpireTime();
        String currenTime = DateTimeUtil.getSysTime();
        if (expireTime.compareTo(currenTime) < 0) {

            throw new LoginException("账号已失效");

        }

//        判断锁定状态
        String lockState = user.getLockState();
        if ("0".equals(lockState)) {

            throw new LoginException("账号已锁定");

        }

//        判断ip地址
        String allowTips = user.getAllowIps();
        if (!allowTips.contains(ip)) {

            throw new LoginException("ip地址受限");

        }

        return user;
    }

    @Override
    public List<User> getUserList() {

        List<User> uList = userDao.getUserList();

        return uList;
    }
}
