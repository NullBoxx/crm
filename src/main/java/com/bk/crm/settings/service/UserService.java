package com.bk.crm.settings.service;

import com.bk.crm.exception.LoginException;
import com.bk.crm.settings.domain.User;

import java.util.List;

/**
 * @program: bjpowernodeProject-CRM
 * @description:
 * @author: Mr.Chen
 * @create: 2022-02-16 15:08:50
 **/

public interface UserService {
    User login(String loginAct, String loginPwd, String ip) throws LoginException;

    List<User> getUserList();
}
