/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.controller;

import com.spring.web.controller.impl.ITourManagerController;
import com.spring.web.model.TourManager;
import com.spring.web.service.impl.ITourManagerService;
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
@RequestMapping(value = "tourManager")
public class TourManagerController implements ITourManagerController {

    @Autowired
    ITourManagerService tourManagerService;

      @RequestMapping(value = "/editView")
     public ModelAndView editView() {
        return new ModelAndView("/tourManager/edit");

    }

    @RequestMapping(value = "/create")
    public ModelAndView create() {
        return new ModelAndView("/tourManager/create");

    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        TourManager t = tourManagerService.save(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/tourManager/view", "map", map);

    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(ModelMap map, @PathVariable("id") int id) {
        TourManager t = tourManagerService.getById(id);
        map.addAttribute("t", t);
        return "tourManager/edit";

    }

    @Override
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request) {
        TourManager t = tourManagerService.update(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/tourManager/view", "map", map);
    }

    @Override
    public List<TourManager> getAll() {

        return tourManagerService.getAll();
    }

    @Override
    public ModelAndView getById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
       TourManager tourManager = tourManagerService.delete(id);
       return new ModelAndView("redirect:/tourManager/view");
    }



    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView view() {
        System.out.println("============");
        Map<String, Object> map = new HashMap<String, Object>();
        List<TourManager> tList = tourManagerService.getAll();
        map.put("tList", tList);
        return new ModelAndView("tourManager/view", "map", map);
    }

    @Override
    public ModelAndView edit(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }


}
