/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.dao;

import com.spring.web.dao.impl.IProfileDAO;

import com.spring.web.model.Profile;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


/**
 *
 * @author Dhaka
 */
@Repository(value = "profileDAO")
@Transactional

public class ProfileDAO implements IProfileDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Profile save(Profile t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;

    }

    @Override
    public Profile update(Profile t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    
    }

    @Override
    public List<Profile> getAll() {
     List<Profile> t = sessionFactory.getCurrentSession().createCriteria(Profile.class).list();
        sessionFactory.getCurrentSession().flush();
        return t;}

    @Override
    public Profile getById(int id) {
    Profile t=(Profile) sessionFactory.getCurrentSession().get(Profile.class, id);
    sessionFactory.getCurrentSession().flush();
        return t;
    
    }

    @Override
    public Profile delete(int id) {
      Profile profile = (Profile) sessionFactory.getCurrentSession().load(Profile.class, id);
      sessionFactory.getCurrentSession().delete(profile);
      return profile;
    }

}
