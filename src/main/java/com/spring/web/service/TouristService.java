/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.service;

import com.spring.web.dao.impl.ICartDAO;
import com.spring.web.dao.impl.IPaymentDAO;
import com.spring.web.dao.impl.IRoomBookingDAO;
import com.spring.web.dao.impl.ITouristDAO;
import com.spring.web.model.Cart;
import com.spring.web.model.Payment;
import com.spring.web.model.RoomBooking;
import com.spring.web.model.Tourist;
import com.spring.web.service.impl.IRoomBookingService;

import com.spring.web.service.impl.ITouristService;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Dhaka
 */
@Service(value = "tourist")
public class TouristService implements ITouristService {

    @Autowired
    ITouristDAO touristDAO;

    @Autowired
    IPaymentDAO paymentDao;

    @Autowired
    ICartDAO cartDAO;
    @Autowired
    IRoomBookingService roomBookingService;
    @Autowired
    IRoomBookingDAO roomBookingDAO;

    @Override
    public Tourist save(HttpServletRequest request) {
        String firstname = request.getParameter("firstName");
        String lastname = request.getParameter("lastName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String city = request.getParameter("city");
        String dob = request.getParameter("dob");
        String nid = request.getParameter("nid");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

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

        String cartType = request.getParameter("cartType");
        String bankName = request.getParameter("bankName");
        String expireDate = request.getParameter("expireDate");
        String cartNo = request.getParameter("cartNo");
        String cvvNo = request.getParameter("cvvNo");

        Tourist t = new Tourist();
        t.setFirstName(firstname);
        t.setLastName(lastname);
        t.setEmail(email);
        t.setPassword(password);
        t.setPhone(phone);
        t.setDob(dob);
      
        t.setNid(nid);
        t.setUsername(username);
        t.setCity(city);
        
        t.setCheckIn(checkIn);
        t.setCheckOut(checkOut);
        t.setDays(days);
        t.setDiscount(discount);
        t.setGrandTotal(grandTotal);
        t.setInvoiceDate(invoiceDate);
        t.setNetTotal(netTotal);
        t.setRoomCode(roomCode);
        t.setRoomInfo(roomInfo);
        t.setRoomPrice(roomPrice);
        t.setRoomStatus(roomStatus);
        t.setTotal(total);
        t.setVat(vat);
        t.settDiscount(tDiscount);
        t.settVat(tVat);


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
        Tourist tourist= touristDAO.save(t);
        RoomBooking rbc= roomBookingDAO.getRoomByRoomCode(roomCode);
        rbc.setRoomStatus("Booked");
        roomBookingDAO.update(rbc);
        
        return tourist;
    }

    @Override
    public Tourist update(HttpServletRequest request) {
        Map<String, String[]> map = request.getParameterMap();
        Tourist t = new Tourist();
        t.setId(Integer.parseInt(map.get("id")[0]));
        t.setFirstName(map.get("firstName")[0]);
        t.setLastName(map.get("lastName")[0]);
        t.setEmail(map.get("email")[0]);
        t.setPhone(map.get("phone")[0]);
        t.setCity(map.get("city")[0]);
        t.setDob(map.get("dob")[0]);
        t.setNid(map.get("nid")[0]);
        
        t.setUsername(map.get("username")[0]);
        t.setPassword(map.get("password")[0]);
        return touristDAO.update(t);
    }

    @Override
    public Tourist delete(int id) {
        return touristDAO.delete(id);
    }

    @Override
    public List<Tourist> getAll() {
        return touristDAO.getAll();

    }

    @Override
    public Tourist getById(int id) {
        return touristDAO.getById(id);

    }

    @Override
    public Tourist userInformationSave(HttpServletRequest request) {
//Tourist-get
        String firstname = request.getParameter("firstName");
        String lastname = request.getParameter("lastName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String city = request.getParameter("city");
        String dob = request.getParameter("dob");
        String nid = request.getParameter("nid");
        String jDate = request.getParameter("jDate");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
//Payment-get
        String cartType = request.getParameter("cartType");
        String bankName = request.getParameter("bankName");
        String expireDate = request.getParameter("expireDate");
        String cartNo = request.getParameter("cartNo");
        String cvvNo = request.getParameter("cvvNo");
//Cart-get
        String place = request.getParameter("place");
        String description = request.getParameter("description");
        String arrivalDate = request.getParameter("arrivalDate");
        String departureDate = request.getParameter("departureDate");
        String adult = request.getParameter("adult");
        String children = request.getParameter("children");
        String days = request.getParameter("days");
        String night = request.getParameter("night");
        Double bus = Double.parseDouble(request.getParameter("bus"));
        Double train = Double.parseDouble(request.getParameter("train"));
        Double flightCost = Double.parseDouble(request.getParameter("flightCost"));
        Double food = Double.parseDouble(request.getParameter("food"));
        Double stayAmount = Double.parseDouble(request.getParameter("stayAmount"));
        Double others = Double.parseDouble(request.getParameter("others"));

        Double total = (bus + train + flightCost + food + stayAmount + others);

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

//Tourist-set     
        Tourist t = new Tourist();
        t.setFirstName(firstname);
        t.setLastName(lastname);
        t.setEmail(email);
        t.setPassword(password);
        t.setPhone(phone);
        t.setDob(dob);
       
        t.setNid(nid);
        t.setUsername(username);
        t.setCity(city);
//Payment-set
        Payment p = new Payment();
        p.setBankName(bankName);
        p.setCartNo(cartNo);
        p.setCvvNo(cvvNo);
        p.setExpireDate(expireDate);
        p.setCartType(cartType);
        paymentDao.save(p);

//Cart-set
        Cart c = new Cart();
        c.setPlace(place);
        c.setDescription(description);
        c.setArrivalDate(arrivalDate);
        c.setDepartureDate(departureDate);
        c.setAdult(adult);
        c.setChildren(children);
        c.setDays(days);
        c.setNight(night);
        c.setBus(bus);
        c.setTrain(train);
        c.setFlightCost(flightCost);
        c.setFood(food);
        c.setStayAmount(stayAmount);
        c.setOthers(others);
        c.setDiscount(discount);
        c.settDiscount(tDiscount);
        c.setTotal(total);
        c.setNetTotal(netTotal);
        c.setVat(vat);
        c.settVat(tVat);
        c.setGrandTotal(grandTotal);
        cartDAO.save(c);
        return touristDAO.save(t);

    }

   
}
