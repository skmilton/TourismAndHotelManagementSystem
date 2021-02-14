/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Dhaka
 */
//@RestController
//@RequestMapping(value = "/login")
//public class LoginController {
//      @RequestMapping(value = "/signIn")
//    public ModelAndView signIn() {
//        return new ModelAndView("/login/signIn");
//
//    }
//     @RequestMapping(value = "/signUp")
//    public ModelAndView signUp() {
//        return new ModelAndView("/login/signUp");
//
//    }
//}
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import com.spring.web.controller.impl.ILoginController;
import com.spring.web.model.Login;
import com.spring.web.service.impl.ILoginService;
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
@RequestMapping(value = "login")
public class LoginController implements ILoginController {

    @Autowired
    ILoginService loginService;

    @RequestMapping(value = "/editView")
    public ModelAndView editView() {
        return new ModelAndView("/login/edit");

    }

    @RequestMapping(value = "/create")
    public ModelAndView create() {
        return new ModelAndView("/login/create");

    }
   @RequestMapping(value = "/userDash")
    public ModelAndView userDash() {
        return new ModelAndView("/userDash/user-dash");

    }
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request) {
        Login t = loginService.save(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/login/view", "map", map);

    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(ModelMap map, @PathVariable("id") int id) {
        Login t = loginService.getById(id);
        map.addAttribute("t", t);
        return "login/edit";

    }

    @Override
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public ModelAndView update(HttpServletRequest request) {
        Login t = loginService.update(request);
        Map<String, Object> map = new HashMap<>();
        map.put("t", t);
        return new ModelAndView("redirect:/login/view", "map", map);
    }

    @Override
    public List<Login> getAll() {

        return loginService.getAll();
    }

    @Override
    public ModelAndView getById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
        Login login = loginService.delete(id);
        return new ModelAndView("redirect:/login/view");
    }

    @RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView view() {
        System.out.println("============");
        Map<String, Object> map = new HashMap<String, Object>();
        List<Login> tList = loginService.getAll();
        map.put("tList", tList);
        return new ModelAndView("login/view", "map", map);
    }

    @Override
    public ModelAndView edit(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @RequestMapping(value = "/signIn")
    public ModelAndView signIn() {
        return new ModelAndView("/login/signIn");

    }

    @RequestMapping(value = "/signUp")
    public ModelAndView signUp() {
        return new ModelAndView("/login/signUp");

    }

}
