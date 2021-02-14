/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.dao;

import com.spring.web.dao.impl.IInvoiceDAO;

import com.spring.web.model.Invoice;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


/**
 *
 * @author Dhaka
 */
@Repository(value = "invoiceDAO")
@Transactional

public class IncoiceDAO implements IInvoiceDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Invoice save(Invoice t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;

    }

    @Override
    public Invoice update(Invoice t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    
    }

    @Override
    public List<Invoice> getAll() {
     List<Invoice> t = sessionFactory.getCurrentSession().createCriteria(Invoice.class).list();
        sessionFactory.getCurrentSession().flush();
        return t;}

    @Override
    public Invoice getById(int id) {
    Invoice t=(Invoice) sessionFactory.getCurrentSession().get(Invoice.class, id);
    sessionFactory.getCurrentSession().flush();
        return t;
    
    }

    @Override
    public Invoice delete(int id) {
      Invoice invoice = (Invoice) sessionFactory.getCurrentSession().load(Invoice.class, id);
      sessionFactory.getCurrentSession().delete(invoice);
      return invoice;
    }

}
