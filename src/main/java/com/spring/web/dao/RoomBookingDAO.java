/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.dao;

import com.spring.web.dao.impl.IRoomBookingDAO;

import com.spring.web.model.RoomBooking;
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
@Repository(value = "roomBookingDAO")
@Transactional

public class RoomBookingDAO implements IRoomBookingDAO {

    @Autowired
    SessionFactory sessionFactory;

    @Override
    public RoomBooking save(RoomBooking t) {
        sessionFactory.getCurrentSession().save(t);
        sessionFactory.getCurrentSession().flush();
        return t;

    }

    @Override
    public RoomBooking update(RoomBooking t) {
        sessionFactory.getCurrentSession().saveOrUpdate(t);
        sessionFactory.getCurrentSession().flush();
        return t;

    }

    @Override
    public List<RoomBooking> getAll() {
        List<RoomBooking> t = sessionFactory.getCurrentSession().createCriteria(RoomBooking.class).list();
        sessionFactory.getCurrentSession().flush();
        return t;
    }

    @Override
    public RoomBooking getById(int id) {
        RoomBooking t = (RoomBooking) sessionFactory.getCurrentSession().get(RoomBooking.class, id);
        sessionFactory.getCurrentSession().flush();
        return t;

    }

    @Override
    public RoomBooking delete(int id) {
        RoomBooking roomBooking = (RoomBooking) sessionFactory.getCurrentSession().load(RoomBooking.class, id);
        sessionFactory.getCurrentSession().delete(roomBooking);
        return roomBooking;
    }

    @Override
    public List<RoomBooking> getBySourceAndDeparture(String checkIn, String checkOut) {
        String hqlQuery = "from RoomBooking where checkIn = :checkIn and checkOut = :checkOut";
        Query query = sessionFactory.getCurrentSession().createQuery(hqlQuery);
        query.setParameter("checkIn", checkIn);
        query.setParameter("checkOut", checkOut);
        System.out.println("----" + checkIn + "----" + checkOut);
        List<RoomBooking> roomList = query.list();
        sessionFactory.getCurrentSession().flush();

        return roomList;
    }

    @Override
    public RoomBooking getRoomByRoomCode(String roomCode) {
        String hqlQuery = "from RoomBooking where roomCode = :roomCode";
        Query query = sessionFactory.getCurrentSession().createQuery(hqlQuery);
        query.setParameter("roomCode", roomCode);
        return (RoomBooking) query.uniqueResult();
    }

    public List<RoomBooking> getByAvailable() {
        String hqlQuery = "from RoomBooking where roomStatus = 'Available'";
        Query query = sessionFactory.getCurrentSession().createQuery(hqlQuery);
        List<RoomBooking> rList = query.list();
        return rList;
    }

    public List<RoomBooking> getByBooked() {
        String hqlQuery = "from RoomBooking where roomStatus = 'Booked'";
        Query query = sessionFactory.getCurrentSession().createQuery(hqlQuery);
        List<RoomBooking> rList = query.list();
        return rList;
    }
}
