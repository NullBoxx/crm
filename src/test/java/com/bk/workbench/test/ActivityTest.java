package com.bk.workbench.test;

import com.bk.crm.utils.ServiceFactory;
import com.bk.crm.utils.UUIDUtil;
import com.bk.crm.workbench.domain.Activity;
import com.bk.crm.workbench.service.ActivityService;
import com.bk.crm.workbench.service.impl.ActivityServiceImpl;
import org.junit.Assert;
import org.junit.Test;

/**
 * @program: bjpowernodeProject-CRM
 * @description:
 * @author: Mr.Chen
 * @create: 2022-03-02 20:09:13
 **/

/*
*
*   JUnit:
*       单元测试
*       是未来实际开发中, 用来代替主方法main的
*
*
* */

public class ActivityTest {

    @Test
    public void testSave() {

        Activity a = new Activity();
        a.setId(UUIDUtil.getUUID());
        a.setName("宣传推广会");

        ActivityService as = (ActivityService) ServiceFactory.getService(new ActivityServiceImpl());

        boolean flag = as.save(a);

        Assert.assertEquals(flag, true);

    }

    @Test
    public void testUpdate() {

        System.out.println("234");

    }

}
