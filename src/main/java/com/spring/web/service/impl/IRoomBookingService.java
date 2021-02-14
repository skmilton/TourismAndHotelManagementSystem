/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.service.impl;

import com.spring.web.common.ICommonService;
import com.spring.web.model.RoomBooking;
import java.util.List;

/**
 *
 * @author Dhaka
 */
public interface IRoomBookingService extends ICommonService<RoomBooking> {

    public List<RoomBooking> getByAvailable();

    public List<RoomBooking> getByBooked();

    public double getTotalSales();

    public double getTotalVat();
}
