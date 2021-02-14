/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.controller;

import com.spring.web.controller.impl.IContactController;
import com.spring.web.model.Contact;
import com.spring.web.service.impl.IContactService;
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
@RequestMapping(value = "contact")
public class ContactController implements IContactController {

    @Autowired
    IContactService contactService;

      @RequestMapping(value = "/editView")
     public ModelAndView editView() {
        return new ModelAndView("/contact/edit");

    }

    @RequestMapping(value = "/create")
    public ModelAndView create() {
        return new ModelAndView("/contact/create");

    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        Contact t = contactService.save(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/contact/view", "map", map);

    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(ModelMap map, @PathVariable("id") int id) {
        Contact t = contactService.getById(id);
        map.addAttribute("t", t);
        return "contact/edit";

    }

    @Override
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request) {
        Contact t = contactService.update(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/contact/view", "map", map);
    }

    @Override
    public List<Contact> getAll() {

        return contactService.getAll();
    }

    @Override
    public ModelAndView getById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
       Contact contact = contactService.delete(id);
       return new ModelAndView("redirect:/contact/view");
    }



    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView view() {
        System.out.println("============");
        Map<String, Object> map = new HashMap<String, Object>();
        List<Contact> tList = contactService.getAll();
        map.put("tList", tList);
        return new ModelAndView("contact/view", "map", map);
    }

    @Override
    public ModelAndView edit(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }


}
