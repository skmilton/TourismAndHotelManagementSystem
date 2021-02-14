/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.dao;

import com.spring.web.dao.impl.ICartDAO;

import com.spring.web.model.Cart;

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
@Repository(value = "cartDAO")
@Transactional

public class CartDAO implements ICartDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Cart save(Cart t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;

    }

    @Override
    public Cart update(Cart t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;

    }

    @Override
    public List<Cart> getAll() {
        List<Cart> t = sessionFactory.getCurrentSession().createCriteria(Cart.class).list();
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Cart getById(int id) {
        Cart t = (Cart) sessionFactory.getCurrentSession().get(Cart.class, id);
        sessionFactory.getCurrentSession().flush();
        return t;

    }

    @Override
    public Cart delete(int id) {
        Cart cart = (Cart) sessionFactory.getCurrentSession().load(Cart.class, id);
        sessionFactory.getCurrentSession().delete(cart);
        return cart;
    }

    @Override
    public List<Cart> getByAvailable() {
        String hqlQuery = "from cart where status = 'Available'";
        Query query = sessionFactory.getCurrentSession().createQuery(hqlQuery);
        List<Cart> cList = query.list();
        return cList;

    }

    @Override
    public List<Cart> getByBooked() {
        String hqlQuery = "from cart where status = 'Booked'";
        Query query = sessionFactory.getCurrentSession().createQuery(hqlQuery);
        List<Cart> cList = query.list();
        return cList;

    }

    @Override
    public List<Cart> getByPlace(String place) {
        String hqlQuery = "from Cart where place = :place";
        Query query = sessionFactory.getCurrentSession().createQuery(hqlQuery);
        query.setParameter("place", place);
        List<Cart> cList = query.list();
        return cList;
    }

    @Override
    public Cart getCartByPackageCode(String code) {
        String hqlQuery = "from Cart where code = :code";
        Query query = sessionFactory.getCurrentSession().createQuery(hqlQuery);
        query.setParameter("code", code);

        return (Cart) query.uniqueResult();

    }

}
