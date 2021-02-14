/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.controller;

import com.spring.web.controller.impl.IPaymentSystemController;
import com.spring.web.model.PaymentSystem;
import com.spring.web.service.impl.IPaymentSystemService;
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
@RequestMapping(value = "/paymentSystem")
public class PaymentSystemController implements IPaymentSystemController {

    @Autowired
    IPaymentSystemService paymentSystemService;

    @RequestMapping(value = "/create")
    public ModelAndView create() {
        return new ModelAndView("/paymentSystem/create");

    }

    @RequestMapping(value = "/editView")
    public ModelAndView editView() {
        return new ModelAndView("/paymentSystem/edit");

    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        PaymentSystem t = paymentSystemService.save(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/paymentSystem/view", "map", map);

    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(ModelMap map, @PathVariable("id") int id) {
        PaymentSystem t = paymentSystemService.getById(id);
        map.addAttribute("t", t);
        return "paymentSystem/edit";

    }

    @Override
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request) {
        PaymentSystem t = paymentSystemService.update(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/paymentSystem/view", "map", map);
    }

    @Override
    public List<PaymentSystem> getAll() {

        return paymentSystemService.getAll();
    }

    @Override
    public ModelAndView getById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
        PaymentSystem paymentSystem = paymentSystemService.delete(id);
        return new ModelAndView("redirect:/paymentSystem/view");
    }

    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView view(HttpServletRequest request) {
        Map<String, Object> map = new HashMap<String, Object>();
        List<PaymentSystem> tList = paymentSystemService.getAll();
        map.put("tList", tList);
        return new ModelAndView("/paymentSystem/view", "map", map);
    }

    @Override
    public ModelAndView edit(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
