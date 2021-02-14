/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.controller;

import com.spring.web.controller.impl.IHolidayPackageController;
import com.spring.web.model.HolidayPackage;
import com.spring.web.model.Hotel;

import com.spring.web.service.impl.IHolidayPackageService;
import com.spring.web.service.impl.IHotelService;
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
@RequestMapping(value = "package")
public class HolidayPackageController implements IHolidayPackageController {

    @Autowired
    IHolidayPackageService holidayPackageService;

    @Autowired
    IHotelService hotelService;

    @RequestMapping(value = "/editView")
    public ModelAndView editView() {
        return new ModelAndView("/package/edit");

    }

    @RequestMapping(value = "/create")
    public ModelAndView create() {
        return new ModelAndView("/package/create");

    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        HolidayPackage t = holidayPackageService.save(request);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("t", t);
        return new ModelAndView("redirect:/package/view", "map", map);

    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(ModelMap map, @PathVariable("id") int id) {
        HolidayPackage hp = holidayPackageService.getById(id);
        map.addAttribute("hp", hp);
        return "package/edit";

    }

    @Override
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request) {
        HolidayPackage t = holidayPackageService.update(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/package/view", "map", map);
    }

    @Override
    public List<HolidayPackage> getAll() {
        List<HolidayPackage> t = holidayPackageService.getAll();
        List<Hotel> h = hotelService.getAll();
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("t", t);
        map.put("h", h);

        return holidayPackageService.getAll();
    }

    @Override
    public ModelAndView getById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
        HolidayPackage holidayPackage = holidayPackageService.delete(id);
        return new ModelAndView("redirect:/package/view");
    }

    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView view(HttpServletRequest request) {
        Map<String, Object> map = new HashMap<String, Object>();
        List<HolidayPackage> tList = holidayPackageService.getAll();
        map.put("tList", tList);
        return new ModelAndView("package/view", "map", map);
    }

    @Override
    public ModelAndView edit(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @RequestMapping(value = "/invoice")
    public ModelAndView pack() {
        List<HolidayPackage> t = holidayPackageService.getAll();
        List<Hotel> h = hotelService.getAll();
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("t", t);
        map.put("h", h);

        return new ModelAndView("/package/invoice", "map", map);
    }

}
