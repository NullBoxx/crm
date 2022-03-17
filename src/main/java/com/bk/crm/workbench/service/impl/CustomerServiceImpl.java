package com.bk.crm.workbench.service.impl;

import com.bk.crm.utils.SqlSessionUtil;
import com.bk.crm.workbench.dao.CustomerDao;
import com.bk.crm.workbench.service.CustomerService;

import java.util.List;

/**
 * @program: crm
 * @description:
 * @author: Mr.Chen
 * @create: 2022-03-04 16:09:41
 **/

public class CustomerServiceImpl implements CustomerService {

    private CustomerDao customerDao = SqlSessionUtil.getSqlSession().getMapper(CustomerDao.class);

    @Override
    public List<String> getCustomerName(String name) {

        List<String> sList = customerDao.getCustomerName(name);

        return sList;
    }
}
