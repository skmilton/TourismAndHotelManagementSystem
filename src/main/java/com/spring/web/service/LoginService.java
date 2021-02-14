/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.service;

import com.spring.web.dao.impl.ILoginDAO;
import com.spring.web.model.Login;
import com.spring.web.service.impl.ILoginService;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Dhaka
 */
@Service
public class LoginService implements ILoginService {

    @Autowired
    ILoginDAO loginDAO;

    @Override
    public Login save(HttpServletRequest request) {

        Map<String, String[]> map = request.getParameterMap();
        Login t = new Login();
        t.setName(map.get("name")[0]);
        t.setUserName(map.get("userName")[0]);
        t.setMobile(map.get("mobile")[0]);
        t.setEmail(map.get("email")[0]);
        t.setPassword(map.get("password")[0]);

        return loginDAO.save(t);
    }

    @Override
    public Login update(HttpServletRequest request) {
        Map<String, String[]> map = request.getParameterMap();
        Login t = new Login();
        t.setId(Integer.parseInt(map.get("id")[0]));
        t.setName(map.get("name")[0]);
        t.setUserName(map.get("userName")[0]);
        t.setMobile(map.get("mobile")[0]);
        t.setEmail(map.get("email")[0]);
        t.setPassword(map.get("password")[0]);
        return loginDAO.update(t);

    }

    @Override
    public Login delete(int id) {
        return loginDAO.delete(id);
    }

    @Override
    public List<Login> getAll() {
        return loginDAO.getAll();

    }

    @Override
    public Login getById(int id) {
        return loginDAO.getById(id);

    }

}
