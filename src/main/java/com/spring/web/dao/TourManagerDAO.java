/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.dao;

import com.spring.web.dao.impl.ITourManagerDAO;

import com.spring.web.model.TourManager;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


/**
 *
 * @author Dhaka
 */
@Repository(value = "tourManagerDAO")
@Transactional

public class TourManagerDAO implements ITourManagerDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public TourManager save(TourManager t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;

    }

    @Override
    public TourManager update(TourManager t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    
    }

    @Override
    public List<TourManager> getAll() {
     List<TourManager> t = sessionFactory.getCurrentSession().createCriteria(TourManager.class).list();
        sessionFactory.getCurrentSession().flush();
        return t;}

    @Override
    public TourManager getById(int id) {
    TourManager t=(TourManager) sessionFactory.getCurrentSession().get(TourManager.class, id);
    sessionFactory.getCurrentSession().flush();
        return t;
    
    }

    @Override
    public TourManager delete(int id) {
      TourManager tourManager = (TourManager) sessionFactory.getCurrentSession().load(TourManager.class, id);
      sessionFactory.getCurrentSession().delete(tourManager);
      return tourManager;
    }

}
