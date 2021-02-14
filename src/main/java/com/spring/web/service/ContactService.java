/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.service;

import com.spring.web.dao.impl.IContactDAO;
import com.spring.web.model.Contact;
import com.spring.web.service.impl.IContactService;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Dhaka
 */
@Service(value = "service")
public class ContactService implements IContactService {

    @Autowired
    IContactDAO contactDAO;

    @Override
    public Contact save(HttpServletRequest request) {

        Map<String, String[]> map = request.getParameterMap();
        Contact t = new Contact();
        t.setName(map.get("name")[0]);
        t.setEmail(map.get("email")[0]);
        t.setPhone(map.get("phone")[0]);
        t.setMessage(map.get("message")[0]);

        return contactDAO.save(t);
    }

    @Override
    public Contact update(HttpServletRequest request) {
        Map<String, String[]> map = request.getParameterMap();
        Contact t = new Contact();
        t.setId(Integer.parseInt(map.get("id")[0]));
        t.setName(map.get("name")[0]);
        t.setEmail(map.get("email")[0]);
        t.setPhone(map.get("phone")[0]);
        t.setMessage(map.get("message")[0]);
        return contactDAO.update(t);

    }

    @Override
    public Contact delete(int id) {
        return contactDAO.delete(id);
    }

    @Override
    public List<Contact> getAll() {
        return contactDAO.getAll();

    }

    @Override
    public Contact getById(int id) {
        return contactDAO.getById(id);

    }

}
