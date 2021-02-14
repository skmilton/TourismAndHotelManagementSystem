/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.controller;

import com.spring.web.controller.impl.IRoomBookingController;
import com.spring.web.controller.impl.ITouristController;
import com.spring.web.dao.RoomBookingDAO;
import com.spring.web.dao.impl.IRoomBookingDAO;
import com.spring.web.dao.impl.ITouristDAO;
import com.spring.web.model.Tourist;
import com.spring.web.service.impl.IRoomBookingService;
import com.spring.web.service.impl.ITouristService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Dhaka
 */
@Controller
@RequestMapping(value = "/tourist")
public class TouristController implements ITouristController {

    @Autowired
    ITouristService touristService;

    @Autowired
    ITouristDAO touristDao;

    @Autowired
    IRoomBookingDAO roomBookingDAO;

    @Autowired
    IRoomBookingService roomBookingService;
    @Autowired
    IRoomBookingController roomBookingcontroller;

    @RequestMapping(value = "/create")

    public ModelAndView create() {
        return new ModelAndView("/tourist/create");

    }

    @RequestMapping(value = "/editView")
    public ModelAndView editView() {
        return new ModelAndView("/tourist/edit");

    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        Map<String, Object> map = new HashMap<String, Object>();
        touristService.save(request);
        map.put("success", "Booking Your Room Successfully Submited. Please collect your invoice");

        return new ModelAndView("/roomBooking/success-page", "map", map);

    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(ModelMap map, @PathVariable("id") int id) {
        Tourist t = touristService.getById(id);
        map.addAttribute("t", t);
        return "tourist/edit";

    }

    @Override
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request) {
        Tourist t = touristService.update(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/tourist/view", "map", map);
    }

    @Override
    public List<Tourist> getAll() {

        return touristService.getAll();
    }

    @Override
    public ModelAndView getById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
        Tourist tourist = touristService.delete(id);
        return new ModelAndView("redirect:/tourist/view");
    }

    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView view(HttpServletRequest request) {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Tourist> tList = touristService.getAll();
        map.put("tList", tList);
        return new ModelAndView("/tourist/view", "map", map);
    }

    @Override
    public ModelAndView edit(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @RequestMapping(value = "/invoice1/{id}", method = RequestMethod.GET)
    public String edit1(ModelMap map, @PathVariable("id") int id) {
        Tourist t = touristService.getById(id);
        map.addAttribute("t", t);
        return "roomBooking/booking_invoice_1";
    }

    @RequestMapping(value = "/invoice-page", method = RequestMethod.POST)
    public ModelAndView getInvoice(HttpServletRequest request) {
        Map<String, Object> map = new HashMap<String, Object>();
        String phone = request.getParameter("phone");
        Tourist t = touristDao.getInvoice(phone);

        if (t != null) {
            map.put("invoice", t);
            return new ModelAndView("/roomBooking/booking_invoice", "map", map);
        } else {
            map.put("failed", "Mobile number does not match");
            return new ModelAndView("/roomBooking/success-page", "map", map);
        }
    }

    @RequestMapping(value = "/dash")
    public ModelAndView userDash() {
        return new ModelAndView("userDash/dash");
    }

}
