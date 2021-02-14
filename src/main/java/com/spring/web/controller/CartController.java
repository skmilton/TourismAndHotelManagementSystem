/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.controller;

import com.spring.web.controller.impl.ICartController;
import com.spring.web.dao.impl.ICartDAO;

import com.spring.web.model.Cart;
import com.spring.web.service.impl.ICartService;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.multipart.MultipartFile;

import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Dhaka
 */
@Controller
@RequestMapping(value = "/cart")
public class CartController implements ICartController {

    @Autowired
    ICartDAO cartDAO;

    @Autowired
    ICartService cartService;

    @Autowired
    ServletContext servletContext;

    @RequestMapping(value = "/create")
    public ModelAndView create() {
        return new ModelAndView("/cart/create");

    }

    @RequestMapping(value = "/editView")
    public ModelAndView editView() {
        return new ModelAndView("/cart/edit");

    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        Cart t = cartService.save(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/cart/view", "map", map);

    }

    @RequestMapping(value = "/invoice/{id}", method = RequestMethod.GET)
    public String edit(ModelMap map, @PathVariable("id") int id) {
        Cart t = cartService.getById(id);
        map.addAttribute("t", t);
        return "cart/cart_invoice";

    }

    @Override
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request) {
        Cart t = cartService.update(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/cart/view", "map", map);
    }

    @Override
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
        Cart cart = cartService.delete(id);
        return new ModelAndView("redirect:/cart/view");
    }

    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView view(HttpServletRequest request) {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Cart> cList = cartService.getAll();
        map.put("cList", cList);
        return new ModelAndView("cart/view", "map", map);
    }

    @RequestMapping(value = "/place", method = RequestMethod.GET)
    public ModelAndView place(HttpServletRequest request) {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Cart> pList = cartService.getAll();
        map.put("pList", pList);
        return new ModelAndView("cart/place", "map", map);
    }

    @Override
    public ModelAndView edit(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Cart> getAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ModelAndView getById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    //    Method for Image Upload
    @RequestMapping(value = "/store", method = RequestMethod.POST)
    public ModelAndView store(HttpServletRequest request, @RequestParam("image") MultipartFile file) throws IOException, ServletException {

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

        if (!file.isEmpty()) {
            String image = file.getOriginalFilename();
            saveFile(file, image, "/resources/cart/img");

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
            c.setImage(image);
            c.setStatus("Available");
            cartDAO.save(c);

        }

        return new ModelAndView("redirect:/cart/view");
    }

    private void saveFile(MultipartFile file, String fileName, String path) throws IOException {
        System.out.println("Start");

        byte[] bytes = file.getBytes();

        String filePath = servletContext.getRealPath(path);
        File directory = new File(filePath);
        File cFile = new File(
                 "C:\\Users\\Dhaka\\Desktop\\tms\\src\\main\\webapp\\resources\\cart\\img"
               // "C:\\Users\\B-7\\Desktop\\tms\\src\\main\\webapp\\resources\\cart\\img"
                + File.separator + fileName);

        BufferedOutputStream stream = new BufferedOutputStream(
                new FileOutputStream(cFile));
        stream.write(bytes);
        stream.close();
        System.out.println(cFile);
    }
//Update
    @RequestMapping(value = "/cartUpdate", method = RequestMethod.POST)
    public ModelAndView stored(HttpServletRequest request){

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
        String status = request.getParameter("status");

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
        c.setStatus("Booked");
        cartDAO.update(c);

        return new ModelAndView("redirect:/cart/view");

    }


    @RequestMapping(value = "/report", method = RequestMethod.GET)
    public ModelAndView report(HttpServletRequest request) {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Cart> cList = cartService.getAll();
        double totalSales = cartService.getTotalSales();
        map.put("totalSales", totalSales);
        map.put("cList", cList);
        return new ModelAndView("cart/report", "map", map);
    }
    
@RequestMapping(value = "/vatReport", method = RequestMethod.GET)
    public ModelAndView vatReport(HttpServletRequest request) {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Cart> vList = cartService.getAll();
        double totalVat = cartService.getTotalVat();
        map.put("totalVat", totalVat);
        map.put("vList", vList);
        return new ModelAndView("cart/vatReport", "map", map);
    }
    
     @RequestMapping(value = "/aReport", method = RequestMethod.GET)
    public ModelAndView getByAvailable() {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Cart> aList = cartDAO.getByAvailable();
        map.put("aList", aList);
        return new ModelAndView("cart/aReport", "map", map);

    }

    @RequestMapping(value = "/bReport", method = RequestMethod.GET)
    public ModelAndView getByBooked() {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Cart> bList = cartDAO.getByBooked();
        map.put("bList", bList);
        return new ModelAndView("cart/bReport", "map", map);
    }

}