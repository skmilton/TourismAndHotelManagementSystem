/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.dao;

import com.spring.web.dao.impl.ILoginDAO;

import com.spring.web.model.Login;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Dhaka
 */
@Repository(value = "loginDAO")
@Transactional

public class LoginDAO implements ILoginDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Login save(Login t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;

    }

    @Override
    public Login update(Login t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;

    }

    @Override
    public List<Login> getAll() {
        List<Login> t = sessionFactory.getCurrentSession().createCriteria(Login.class).list();
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Login getById(int id) {
        Login t = (Login) sessionFactory.getCurrentSession().get(Login.class, id);
        sessionFactory.getCurrentSession().flush();
        return t;

    }

    @Override
    public Login delete(int id) {
        Login login = (Login) sessionFactory.getCurrentSession().load(Login.class, id);
        sessionFactory.getCurrentSession().delete(login);
        return login;
    }

}
