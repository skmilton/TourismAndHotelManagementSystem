/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.service;

import com.spring.web.dao.impl.ICartDAO;
import com.spring.web.dao.impl.IInvoiceDAO;
import com.spring.web.dao.impl.IPaymentDAO;
import com.spring.web.dao.impl.IPaymentSystemDAO;
import com.spring.web.dao.impl.ITouristDAO;
import com.spring.web.model.Cart;
import com.spring.web.model.Invoice;
import com.spring.web.model.Payment;
import com.spring.web.model.PaymentSystem;
import com.spring.web.model.Tourist;
import com.spring.web.service.impl.IPaymentService;
import com.spring.web.service.impl.IPaymentSystemService;
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
@Service
public class PaymentSystemService implements IPaymentSystemService {

    @Autowired
    IPaymentSystemDAO paymentSystemDAO;

    @Autowired
    ITouristDAO touristDAO;

    @Autowired
    IPaymentDAO paymentDAO;

    @Autowired
    ICartDAO cartDAO;

    @Override
    public PaymentSystem save(HttpServletRequest request) {

//tourist
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
//payment
        String cartType = request.getParameter("cartType");
        String bankName = request.getParameter("bankName");
        String expireDate = request.getParameter("expireDate");
        String cartNo = request.getParameter("cartNo");
        String cvvNo = request.getParameter("cvvNo");
//cart
        String place = request.getParameter("place");
        String description = request.getParameter("description");
        String arrivalDate = request.getParameter("arrivalDate");
        String departureDate = request.getParameter("departureDate");
        String adult = request.getParameter("adult");
        String children = request.getParameter("children");
        String days = request.getParameter("days");
        String night = request.getParameter("night");
        double bus = Double.parseDouble(request.getParameter("bus"));
        double train = Double.parseDouble(request.getParameter("train"));
        double flightCost = Double.parseDouble(request.getParameter("flightCost"));
        double food = Double.parseDouble(request.getParameter("food"));
        double stayAmount = Double.parseDouble(request.getParameter("stayAmount"));
        

        String code = request.getParameter("code");
        String accNo = request.getParameter("accNo");
        String invoiceDate = request.getParameter("invoiceDate");

        Double others = Double.parseDouble(request.getParameter("others"));

        Double total = ( bus + train + flightCost + food + stayAmount + others);

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
//tourist
        PaymentSystem ps = new PaymentSystem();

        ps.setFirstName(firstname);
        ps.setLastName(lastname);
        ps.setEmail(email);
        ps.setPassword(password);
        ps.setPhone(phone);
        ps.setDob(dob);
        ps.setjDate(jDate);
        ps.setNid(nid);
        ps.setUsername(username);
        ps.setCity(city);

//payment
        ps.setBankName(bankName);
        ps.setCartNo(cartNo);
        ps.setCvvNo(cvvNo);
        ps.setExpireDate(expireDate);
        ps.setCartType(cartType);
//cart
        ps.setPlace(place);
        ps.setDescription(description);
        ps.setArrivalDate(arrivalDate);
        ps.setDepartureDate(departureDate);
        ps.setAdult(adult);
        ps.setChildren(children);
        ps.setDays(days);
        ps.setNight(night);
        ps.setBus(bus);
        ps.setTrain(train);
        ps.setFlightCost(flightCost);
        ps.setFood(food);
        ps.setStayAmount(stayAmount);
        
////calclution
       ps.setAccNo(accNo);
       ps.setCode(code);
       ps.setInvoiceDate(invoiceDate);
       ps.setTotal(total);
       ps.setDiscount(discount);
       ps.setVat(vat);
       ps.settVat(tVat);
       ps.setOthers(others);
       ps.setGrandTotal(grandTotal);
       ps.settDiscount(tDiscount);
       ps.setNetTotal(netTotal);
//       
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
        touristDAO.save(t);

        Payment p = new Payment();
        p.setBankName(bankName);
        p.setCartNo(cartNo);
        p.setCvvNo(cvvNo);
        p.setExpireDate(expireDate);
        p.setCartType(cartType);
        paymentDAO.save(p);

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
       
        cartDAO.save(c);

        return paymentSystemDAO.save(ps);
    }

    @Override
    public PaymentSystem delete(int id) {
        return paymentSystemDAO.delete(id);
    }

    @Override
    public List<PaymentSystem> getAll() {
        return paymentSystemDAO.getAll();

    }

    @Override
    public PaymentSystem getById(int id) {
        return paymentSystemDAO.getById(id);

    }

    @Override
    public PaymentSystem update(HttpServletRequest request) {

//tourist
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
//payment
        String cartType = request.getParameter("cartType");
        String bankName = request.getParameter("bankName");
        String expireDate = request.getParameter("expireDate");
        String cartNo = request.getParameter("cartNo");
        String cvvNo = request.getParameter("cvvNo");
//cart
        String place = request.getParameter("place");
        String description = request.getParameter("description");
        String arrivalDate = request.getParameter("arrivalDate");
        String departureDate = request.getParameter("departureDate");
        String adult = request.getParameter("adult");
        String children = request.getParameter("children");
        String days = request.getParameter("days");
        String night = request.getParameter("night");
        double bus = Double.parseDouble(request.getParameter("bus"));
        double train = Double.parseDouble(request.getParameter("train"));
        double flightCost = Double.parseDouble(request.getParameter("flightCost"));
        double food = Double.parseDouble(request.getParameter("food"));
        double stayAmount = Double.parseDouble(request.getParameter("stayAmount"));
        

//tourist
        PaymentSystem ps = new PaymentSystem();

        ps.setFirstName(firstname);
        ps.setLastName(lastname);
        ps.setEmail(email);
        ps.setPassword(password);
        ps.setPhone(phone);
        ps.setDob(dob);
        ps.setjDate(jDate);
        ps.setNid(nid);
        ps.setUsername(username);
        ps.setCity(city);

//payment
        ps.setBankName(bankName);
        ps.setCartNo(cartNo);
        ps.setCvvNo(cvvNo);
        ps.setExpireDate(expireDate);
        ps.setCartType(cartType);
//cart
        ps.setPlace(place);
        ps.setDescription(description);
        ps.setArrivalDate(arrivalDate);
        ps.setDepartureDate(departureDate);
        ps.setAdult(adult);
        ps.setChildren(children);
        ps.setDays(days);
        ps.setNight(night);
        ps.setBus(bus);
        ps.setTrain(train);
        ps.setFlightCost(flightCost);
        ps.setFood(food);
        ps.setStayAmount(stayAmount);
       

        return paymentSystemDAO.update(ps);

    }

}
