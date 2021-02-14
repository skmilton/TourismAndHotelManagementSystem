/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.service;

import com.spring.web.dao.impl.ICartDAO;
import com.spring.web.model.Cart;
import com.spring.web.service.impl.ICartService;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Dhaka
 */
@Service
public class CartService implements ICartService {

    @Autowired
    ICartDAO cartDAO;

    @Override
    public Cart save(HttpServletRequest request) {

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String city = request.getParameter("city");
        String dob = request.getParameter("dob");
        String nid = request.getParameter("nid");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String cartType = request.getParameter("cartType");
        String expireDate = request.getParameter("expireDate");
        String cartNo = request.getParameter("cartNo");
        String cvvNo = request.getParameter("cvvNo");

        String place = request.getParameter("place");
        String description = request.getParameter("description");
        String arrivalDate = request.getParameter("arrivalDate");
        String departureDate = request.getParameter("departureDate");
        String adult = request.getParameter("adult");
        String children = request.getParameter("children");
        String days = request.getParameter("days");
        String night = request.getParameter("night");
        String invoiceDate = request.getParameter("invoiceDate");
        String accNo = request.getParameter("accNo");
        String code = request.getParameter("code");
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

        Cart c = new Cart();

        c.setFirstName(firstName);
        c.setLastName(lastName);
        c.setEmail(email);
        c.setPhone(phone);
        c.setCity(city);
        c.setDob(dob);
        c.setNid(nid);
        c.setUsername(username);
        c.setPassword(password);
        c.setCartNo(cartNo);
        c.setCartType(cartType);
        c.setCvvNo(cvvNo);
        c.setExpireDate(expireDate);

        c.setAccNo(accNo);
        c.setAdult(adult);
        c.setArrivalDate(arrivalDate);
        c.setBus(bus);
        c.setChildren(children);
        c.setCode(code);
        c.setDays(days);
        c.setDepartureDate(departureDate);
        c.setDescription(description);
        c.setDiscount(discount);
        c.setFlightCost(flightCost);
        c.setFood(food);
        c.setGrandTotal(grandTotal);
        c.setInvoiceDate(invoiceDate);
        c.setNetTotal(netTotal);
        c.setNight(night);
        c.setOthers(others);
        c.setPlace(place);
        c.setStayAmount(stayAmount);
        c.setTotal(total);
        c.setTrain(train);
        c.setVat(vat);
        c.settDiscount(tDiscount);
        c.settVat(tVat);
        cartDAO.save(c);
/////cart booked package
        Cart cbc = cartDAO.getCartByPackageCode(code);
        System.out.println(cbc.getCode());
        cbc.setCode("Booked");
        cartDAO.update(cbc);
        return cartDAO.save(c);
    }

    @Override
    public Cart update(HttpServletRequest request) {

        int id = Integer.parseInt(request.getParameter("id"));

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String city = request.getParameter("city");
        String dob = request.getParameter("dob");
        String nid = request.getParameter("nid");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String cartType = request.getParameter("cartType");
        String expireDate = request.getParameter("expireDate");
        String cartNo = request.getParameter("cartNo");
        String cvvNo = request.getParameter("cvvNo");

        String place = request.getParameter("place");
        String description = request.getParameter("description");
        String arrivalDate = request.getParameter("arrivalDate");
        String departureDate = request.getParameter("departureDate");
        String adult = request.getParameter("adult");
        String children = request.getParameter("children");
        String days = request.getParameter("days");
        String night = request.getParameter("night");
        String invoiceDate = request.getParameter("invoiceDate");
        String accNo = request.getParameter("accNo");
        String code = request.getParameter("code");

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

        Cart c = new Cart();
        c.setId(id);
        c.setAccNo(accNo);
        c.setAdult(adult);
        c.setArrivalDate(arrivalDate);
        c.setBus(bus);
        c.setChildren(children);
        c.setCode(code);
        c.setDays(days);
        c.setDepartureDate(departureDate);
        c.setDescription(description);
        c.setDiscount(discount);
        c.setFlightCost(flightCost);
        c.setFood(food);
        c.setGrandTotal(grandTotal);
        c.setInvoiceDate(invoiceDate);
        c.setNetTotal(netTotal);
        c.setNight(night);
        c.setOthers(others);
        c.setPlace(place);
        c.setStayAmount(stayAmount);
        c.setTotal(total);
        c.setTrain(train);
        c.setVat(vat);
        c.settDiscount(tDiscount);
        c.settVat(tVat);

        c.setFirstName(firstName);
        c.setLastName(lastName);
        c.setEmail(email);
        c.setPhone(phone);
        c.setCity(city);
        c.setDob(dob);
        c.setNid(nid);
        c.setUsername(username);
        c.setPassword(password);
        c.setCartNo(cartNo);
        c.setCartType(cartType);
        c.setCvvNo(cvvNo);
        c.setExpireDate(expireDate);

        return cartDAO.update(c);
    }

    @Override
    public Cart delete(int id) {
        return cartDAO.delete(id);
    }

    @Override
    public List<Cart> getAll() {
        return cartDAO.getAll();

    }

    @Override
    public Cart getById(int id) {
        return cartDAO.getById(id);

    }

    @Override
    public List<Cart> getByPlace() {
        return cartDAO.getByPlace(null);

    }

    public double getTotalSales() {

        List<Cart> cList = getAll();
        double total = 0.0;
        for (int i = 0; i < cList.size(); i++) {
            total += cList.get(i).getGrandTotal();

        }
        return total;
    }

    @Override
    public double getTotalVat() {

        List<Cart> vList = getAll();
        double totalVat = 0.0;
        for (int i = 0; i < vList.size(); i++) {
            totalVat += vList.get(i).gettVat();
        }
        return totalVat;

    }

    @Override
    public List<Cart> getByAvailable() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Cart> getByBooked() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
