/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.dao;

import com.spring.web.dao.impl.IHolidayPackageDAO;

import com.spring.web.model.HolidayPackage;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


/**
 *
 * @author Dhaka
 */
@Repository(value = "holidayPackageDAO")
@Transactional

public class HolidayPcakageDAO implements IHolidayPackageDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public HolidayPackage save(HolidayPackage t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;

    }

    @Override
    public HolidayPackage update(HolidayPackage t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    
    }

    @Override
    public List<HolidayPackage> getAll() {
     List<HolidayPackage> t = sessionFactory.getCurrentSession().createCriteria(HolidayPackage.class).list();
        sessionFactory.getCurrentSession().flush();
        return t;}

    @Override
    public HolidayPackage getById(int id) {
    HolidayPackage t=(HolidayPackage) sessionFactory.getCurrentSession().get(HolidayPackage.class, id);
    sessionFactory.getCurrentSession().flush();
        return t;
    
    }

    @Override
    public HolidayPackage delete(int id) {
      HolidayPackage holidayPackage = (HolidayPackage) sessionFactory.getCurrentSession().load(HolidayPackage.class, id);
      sessionFactory.getCurrentSession().delete(holidayPackage);
      return holidayPackage;
    }

}
