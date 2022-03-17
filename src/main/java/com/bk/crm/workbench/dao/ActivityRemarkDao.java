package com.bk.crm.workbench.dao;

import com.bk.crm.workbench.domain.ActivityRemark;

import java.util.List;

/**
 * @program: bjpowernodeProject-CRM
 * @description:
 * @author: Mr.Chen
 * @create: 2022-02-18 11:40:02
 **/

public interface ActivityRemarkDao {


    int getCountByAids(String[] ids);

    int deleteAids(String[] ids);

    List<ActivityRemark> getRemarkListById(String activityId);

    int deleteRemarkById(String id);

    int saveRemark(ActivityRemark ar);

    int updateRemark(ActivityRemark ar);
}
