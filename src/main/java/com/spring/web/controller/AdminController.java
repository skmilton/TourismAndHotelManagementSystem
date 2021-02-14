/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.controller;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Dhaka
 */
@Controller
@RequestMapping(value = "/admin")
public class AdminController {

    @RequestMapping(value = "/dashbord")
    public ModelAndView admin() {
        return new ModelAndView("/admin_dashboard/dash/dashbord");

    }

    @RequestMapping(value = "/signIn")
    public ModelAndView adminLogin(HttpServletRequest request) {
        Map<String, Object> map=new HashMap<String, Object>();
        
        return new ModelAndView("/admin/signIn");
    }
    
    @RequestMapping(value = "/signUp")
    public ModelAndView adminSignUp() {
        return new ModelAndView("/admin/signUp");
    }


@RequestMapping(value = "/login", method = RequestMethod.POST)
    public ModelAndView receptionLog(HttpServletRequest request){
      Map<String, Object> map = new HashMap<String, Object>();
      String user = request.getParameter("username");
      String pass = request.getParameter("password");
     
      String username = "admin";
      String password = "1234";
      
      if(user.equalsIgnoreCase(username) && pass.equalsIgnoreCase(password)){
          
        return new ModelAndView("/userDash/user-dash", "map", map);
      }else{
         map.put("status", "Usrname and Password does not match" );
           return new ModelAndView("/admin/signUp", "map", map);
       }
        
    }}