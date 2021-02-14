/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.dao.impl;

import com.spring.web.common.ICommonDAO;
import com.spring.web.model.RoomBooking;
import java.util.List;

/**
 *
 * @author Dhaka
 */
public interface IRoomBookingDAO extends ICommonDAO<RoomBooking>{
     public List<RoomBooking> getBySourceAndDeparture(String checkIn, String checkOut);
     public RoomBooking getRoomByRoomCode(String roomCode);
     public List<RoomBooking> getByAvailable();
     public List<RoomBooking> getByBooked();
}
