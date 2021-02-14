/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.dao;

import com.spring.web.dao.impl.IHotelDAO;

import com.spring.web.model.Hotel;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


/**
 *
 * @author Dhaka
 */
@Repository(value = "hotelDAO")
@Transactional

public class HotelDAO implements IHotelDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public Hotel save(Hotel t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;

    }

    @Override
    public Hotel update(Hotel t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;
    
    }

    @Override
    public List<Hotel> getAll() {
     List<Hotel> t = sessionFactory.getCurrentSession().createCriteria(Hotel.class).list();
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public Hotel getById(int id) {
    Hotel t=(Hotel) sessionFactory.getCurrentSession().get(Hotel.class, id);
    sessionFactory.getCurrentSession().flush();
        return t;
    
    }

    @Override
    public Hotel delete(int id) {
      Hotel hotel = (Hotel) sessionFactory.getCurrentSession().load(Hotel.class, id);
      sessionFactory.getCurrentSession().delete(hotel);
      return hotel;
    }

}
