/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.service;

import com.spring.web.dao.impl.IRoomBookingDAO;

import com.spring.web.model.RoomBooking;
import com.spring.web.service.impl.IRoomBookingService;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Dhaka
 */
@Service
public class RoomBookingService implements IRoomBookingService {

    @Autowired
    IRoomBookingDAO roomBookingDAO;

    @Override
    public RoomBooking save(HttpServletRequest request) {
        String roomCode = request.getParameter("roomCode");
        String roomStatus = request.getParameter("roomStatus");
        String roomInfo = request.getParameter("roomInfo");
        String checkIn = request.getParameter("checkIn");
        String checkOut = request.getParameter("checkOut");
        String days = request.getParameter("days");

        String invoiceDate = request.getParameter("invoiceDate");
        Double roomPrice = Double.parseDouble(request.getParameter("roomPrice"));
        Double total = roomPrice;
        Double discount = Double.parseDouble(request.getParameter("discount"));
        Double tDiscount = ((total * discount) / 100);//discount Amount
        System.out.println(tDiscount);
        Double netTotal = total - tDiscount;//without discount Amount
        System.out.println(netTotal);
        Double vat = Double.parseDouble(request.getParameter("vat"));
        Double tVat = ((netTotal * vat) / 100);//vat Amount
        System.out.println(tVat);
        Double grandTotal = (netTotal + tVat);
        System.out.println(grandTotal);

        RoomBooking rb = new RoomBooking();

        rb.setCheckIn(checkIn);
        rb.setCheckOut(checkOut);
        rb.setDays(days);
        rb.setDiscount(discount);
        rb.setGrandTotal(grandTotal);
        rb.setInvoiceDate(invoiceDate);
        rb.setNetTotal(netTotal);
        rb.setRoomCode(roomCode);
        rb.setRoomInfo(roomInfo);
        rb.setRoomPrice(roomPrice);
        rb.setRoomStatus(roomStatus);
        rb.setTotal(total);
        rb.setVat(vat);
        rb.settDiscount(tDiscount);
        rb.settVat(tVat);

        return roomBookingDAO.save(rb);
    }

    @Override
    public RoomBooking update(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        String roomCode = request.getParameter("roomCode");
        String roomStatus = request.getParameter("roomStatus");
        String roomInfo = request.getParameter("roomInfo");
        String checkIn = request.getParameter("checkIn");
        String days = request.getParameter("days");
        String checkOut = request.getParameter("checkOut");
        String invoiceDate = LocalDate.now().toString();
        Double roomPrice = Double.parseDouble(request.getParameter("roomPrice"));
        Double total = roomPrice;
        Double discount = Double.parseDouble(request.getParameter("discount"));
        Double tDiscount = ((total * discount) / 100);//discount Amount
        System.out.println(tDiscount);
        Double netTotal = total - tDiscount;//without discount Amount
        System.out.println(netTotal);
        Double vat = Double.parseDouble(request.getParameter("vat"));
        Double tVat = ((netTotal * vat) / 100);//vat Amount
        System.out.println(tVat);
        Double grandTotal = (netTotal + tVat);
        System.out.println(grandTotal);

        RoomBooking rb = new RoomBooking();
        rb.setId(id);
        rb.setCheckIn(checkIn);
        rb.setCheckOut(checkOut);
        rb.setDays(days);
        rb.setDiscount(discount);
        rb.setGrandTotal(grandTotal);
        rb.setInvoiceDate(invoiceDate);
        rb.setNetTotal(netTotal);
        rb.setRoomCode(roomCode);
        rb.setRoomInfo(roomInfo);
        rb.setRoomPrice(roomPrice);
        rb.setRoomStatus(roomStatus);
        rb.setTotal(total);
        rb.setVat(vat);
        rb.settDiscount(tDiscount);
        rb.settVat(tVat);

        return roomBookingDAO.update(rb);
    }

    @Override
    public RoomBooking delete(int id) {
        return roomBookingDAO.delete(id);
    }

    @Override
    public List<RoomBooking> getAll() {
        return roomBookingDAO.getAll();

    }

    @Override
    public RoomBooking getById(int id) {
        return roomBookingDAO.getById(id);

    }

    public List<RoomBooking> getBySourceAndDeparture(String checkIn, String checkOut) {
        return roomBookingDAO.getBySourceAndDeparture(checkIn, checkOut);
    }

    @Override
    public List<RoomBooking> getByAvailable() {
        return getByAvailable();

    }

    @Override
    public List<RoomBooking> getByBooked() {
        return getByBooked();

    }

    @Override
    public double getTotalSales() {
        List<RoomBooking> cList = getAll();
        double total = 0.0;
        for (int i = 0; i < cList.size(); i++) {
            total += cList.get(i).getGrandTotal();

        }
        return total;

    }

    @Override
    public double getTotalVat() {
        List<RoomBooking> vList = getAll();
        double totalVat = 0.0;
        for (int i = 0; i < vList.size(); i++) {
            totalVat += vList.get(i).gettVat();
        }
        return totalVat;
    }

}
