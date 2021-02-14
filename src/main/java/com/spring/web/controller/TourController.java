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
@RestController
public class TourController {
    @RequestMapping(value = "/tour")
   public ModelAndView tour(){
        System.out.println(" tour page");
        return new ModelAndView("tour/tour");
      
   }
}
