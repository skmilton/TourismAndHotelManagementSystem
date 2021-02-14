/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.dao;

import com.spring.web.dao.impl.IPaymentSystemDAO;

import com.spring.web.model.PaymentSystem;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


/**
 *
 * @author Dhaka
 */
@Repository(value = "paymentSystemDAO")
@Transactional

public class PaymentSystemDAO implements IPaymentSystemDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public PaymentSystem save(PaymentSystem t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;

    }

    @Override
    public PaymentSystem update(PaymentSystem t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    
    }

    @Override
    public List<PaymentSystem> getAll() {
     List<PaymentSystem> t = sessionFactory.getCurrentSession().createCriteria(PaymentSystem.class).list();
        sessionFactory.getCurrentSession().flush();
        return t;}

    @Override
    public PaymentSystem getById(int id) {
    PaymentSystem t=(PaymentSystem) sessionFactory.getCurrentSession().get(PaymentSystem.class, id);
    sessionFactory.getCurrentSession().flush();
        return t;
    
    }

    @Override
    public PaymentSystem delete(int id) {
      PaymentSystem paymentSystem = (PaymentSystem) sessionFactory.getCurrentSession().load(PaymentSystem.class, id);
      sessionFactory.getCurrentSession().delete(paymentSystem);
      return paymentSystem;
    }

}
