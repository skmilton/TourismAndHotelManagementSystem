/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.dao;

import com.spring.web.dao.impl.ITouristDAO;

import com.spring.web.model.Tourist;
import java.util.List;
import org.hibernate.Query;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


/**
 *
 * @author Dhaka
 */
@Repository(value = "touristDao")
@Transactional

public class TouristDAO implements ITouristDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Tourist save(Tourist t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;

    }

    @Override
    public Tourist update(Tourist t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    
    }

    @Override
    public List<Tourist> getAll() {
     List<Tourist> t = sessionFactory.getCurrentSession().createCriteria(Tourist.class).list();
        sessionFactory.getCurrentSession().flush();
        return t;}

    @Override
    public Tourist getById(int id) {
    Tourist t=(Tourist) sessionFactory.getCurrentSession().get(Tourist.class, id);
    sessionFactory.getCurrentSession().flush();
        return t;
    
    }

    @Override
    public Tourist delete(int id) {
      Tourist tourist = (Tourist) sessionFactory.getCurrentSession().load(Tourist.class, id);
      sessionFactory.getCurrentSession().delete(tourist);
      return tourist;
    }

    @Override
    public Tourist userInformationSave(Tourist t) {
        
    sessionFactory.getCurrentSession().save(t);
    sessionFactory.getCurrentSession().flush();
        return t;
    
    }

    @Override
    public Tourist getInvoice(String phone) {
        String hql = "from tourist where phone = :phone";
        Query q = sessionFactory.getCurrentSession().createQuery(hql);
        q.setParameter("phone", phone);
        
        Tourist t = (Tourist) q.uniqueResult();
        if(t != null){
            return t;
            
        }else{
            return null;
        }
    }

    
  
        
    

}
