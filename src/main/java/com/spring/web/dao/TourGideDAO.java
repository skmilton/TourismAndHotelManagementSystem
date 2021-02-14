/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.dao;

import com.spring.web.dao.impl.ITourGideDAO;

import com.spring.web.model.TourGide;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


/**
 *
 * @author Dhaka
 */
@Repository(value = "tourGideDAO")
@Transactional

public class TourGideDAO implements ITourGideDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public TourGide save(TourGide t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;

    }

    @Override
    public TourGide update(TourGide t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    
    }

    @Override
    public List<TourGide> getAll() {
     List<TourGide> t = sessionFactory.getCurrentSession().createCriteria(TourGide.class).list();
        sessionFactory.getCurrentSession().flush();
        return t;}

    @Override
    public TourGide getById(int id) {
    TourGide t=(TourGide) sessionFactory.getCurrentSession().get(TourGide.class, id);
    sessionFactory.getCurrentSession().flush();
        return t;
    
    }

    @Override
    public TourGide delete(int id) {
      TourGide tourGide = (TourGide) sessionFactory.getCurrentSession().load(TourGide.class, id);
      sessionFactory.getCurrentSession().delete(tourGide);
      return tourGide;
    }

}
