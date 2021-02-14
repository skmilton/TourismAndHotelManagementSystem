/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.controller;

import com.spring.web.controller.impl.IInvoiceController;
import com.spring.web.model.Invoice;
import com.spring.web.service.impl.IInvoiceService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Dhaka
 */
@RestController
@RequestMapping(value = "/invoice")
public class InvoiceController implements IInvoiceController {

    @Autowired
    IInvoiceService invoiceService;

    @RequestMapping(value = "/create")
    public ModelAndView create() {
        return new ModelAndView("/invoice/create");

    }

    @RequestMapping(value = "/edit/{id}")
    public ModelAndView editView(ModelMap map, @PathVariable("id") int id) {
        Invoice invoice = invoiceService.getById(id);
        map.addAttribute("invoice", invoice);
        return new ModelAndView("/invoice/edit");

    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        Invoice t = invoiceService.save(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/invoice/view", "map", map);

    }

    
    public String edit(ModelMap map, @PathVariable("id") int id) {
        Invoice t = invoiceService.getById(id);
        map.addAttribute("t", t);
        return "invoice/edit";

    }

    @Override
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request) {
        Invoice t = invoiceService.update(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/invoice/view", "map", map);
    }

    @Override
    public List<Invoice> getAll() {

        return invoiceService.getAll();
    }

    @Override
    public ModelAndView getById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
        Invoice invoice = invoiceService.delete(id);
        return new ModelAndView("redirect:/invoice/view");
    }

    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView view(HttpServletRequest request) {
        Map<String, Object> map = new HashMap<String, Object>();
        List<Invoice> tList = invoiceService.getAll();
        map.put("tList", tList);
        return new ModelAndView("invoice/view", "map", map);
    }

    @Override
    public ModelAndView edit(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
  
 @RequestMapping(value = "/create1")
    public ModelAndView cartInvoice() {
        return new ModelAndView("/cartInvoice/view");

    }

}
