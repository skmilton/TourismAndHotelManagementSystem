/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.controller;

import com.spring.web.dao.impl.IRoomBookingDAO;
import com.spring.web.model.Cart;
import com.spring.web.model.RoomBooking;
import com.spring.web.service.CartService;
import com.spring.web.service.impl.ICartService;
import com.spring.web.service.impl.IRoomBookingService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Dhaka
 */
@RestController

public class HomeController {

    @Autowired
    ICartService cartService;

    @Autowired
    IRoomBookingDAO roomBookingDAO;
    @Autowired
    IRoomBookingService roomBookingService;

    @RequestMapping(value = "")
    public ModelAndView home(HttpServletRequest request) {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Cart> cList = cartService.getAll();
        List<RoomBooking> hList = roomBookingService.getAll();
        map.put("hList", hList);
        map.put("cList", cList);
        return new ModelAndView("home/home", "map", map);

    }

    @RequestMapping(value = "/dash")
    public ModelAndView dash() {
        return new ModelAndView("admin_dashboard/dashboard");

    }

    @RequestMapping(value = "/room")
    public ModelAndView room() {
        return new ModelAndView("/room/create");

    }

    @RequestMapping(value = "/contact")
    public ModelAndView contact() {
        return new ModelAndView("/contact/create");

    }

    @RequestMapping(value = "/search", method = RequestMethod.POST)
    public ModelAndView getBySourceAndDeparture(HttpServletRequest request) {
        System.out.println(request.getParameter("fromVal"));
        System.out.println(request.getParameter("toVal"));
        Map<String, Object> map = new HashMap<>();
        List<RoomBooking> roomList = roomBookingDAO.getBySourceAndDeparture(request.getParameter("fromVal"), request.getParameter("toVal"));
        map.put("roomList", roomList);
        return new ModelAndView("roomBooking/view", "map", map);
    }
    
}
