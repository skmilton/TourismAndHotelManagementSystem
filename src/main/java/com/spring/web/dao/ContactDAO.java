/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.dao;

import com.spring.web.dao.impl.IContactDAO;

import com.spring.web.model.Contact;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


/**
 *
 * @author Dhaka
 */
@Repository(value = "contactDAO")
@Transactional

public class ContactDAO implements IContactDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Contact save(Contact t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;

    }

    @Override
    public Contact update(Contact t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    
    }

    @Override
    public List<Contact> getAll() {
     List<Contact> t = sessionFactory.getCurrentSession().createCriteria(Contact.class).list();
        sessionFactory.getCurrentSession().flush();
        return t;}

    @Override
    public Contact getById(int id) {
    Contact t=(Contact) sessionFactory.getCurrentSession().get(Contact.class, id);
    sessionFactory.getCurrentSession().flush();
        return t;
    
    }

    @Override
    public Contact delete(int id) {
      Contact contact = (Contact) sessionFactory.getCurrentSession().load(Contact.class, id);
      sessionFactory.getCurrentSession().delete(contact);
      return contact;
    }

}
