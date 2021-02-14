/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.common;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Dhaka
 */
public interface ICommonController<T> {

    public ModelAndView create();

    public ModelAndView save(HttpServletRequest request);

    public ModelAndView edit(int id);

    public ModelAndView update(HttpServletRequest request);

    public List<T> getAll();

    public ModelAndView getById(int id);

    public ModelAndView delete(int id);

}
