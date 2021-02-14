/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.dao;



import com.spring.web.dao.impl.IPaymentDAO;
import com.spring.web.model.Payment;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


/**
 *
 * @author Dhaka
 */
@Repository(value = "paymentDAO")
@Transactional

public class PaymentDAO implements IPaymentDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Payment save(Payment t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;

    }

    @Override
    public Payment update(Payment t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    
    }

    @Override
    public List<Payment> getAll() {
     List<Payment> t = sessionFactory.getCurrentSession().createCriteria(Payment.class).list();
        sessionFactory.getCurrentSession().flush();
        return t;}

    @Override
    public Payment getById(int id) {
    Payment t=(Payment) sessionFactory.getCurrentSession().get(Payment.class, id);
    sessionFactory.getCurrentSession().flush();
        return t;
    
    }

    @Override
    public Payment delete(int id) {
      Payment payment = (Payment) sessionFactory.getCurrentSession().load(Payment.class, id);
      sessionFactory.getCurrentSession().delete(payment);
      return payment;
    }

}
