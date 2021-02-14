/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.service;

import com.spring.web.dao.impl.ITourManagerDAO;
import com.spring.web.model.TourManager;
import com.spring.web.service.impl.ITourManagerService;
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
public class TourManagerService implements ITourManagerService {

    @Autowired
    ITourManagerDAO tourManagerDAO;

    @Override
    public TourManager save(HttpServletRequest request) {

        Map<String, String[]> map = request.getParameterMap();
        TourManager t = new TourManager();
        t.setFirstName(map.get("firstName")[0]);
        t.setLastName(map.get("lastName")[0]);
        t.setEmail(map.get("email")[0]);
        t.setPhone(map.get("phone")[0]);
        t.setCity(map.get("city")[0]);
        t.setDob(map.get("dob")[0]);
        t.setNid(map.get("nid")[0]);
        t.setjDate(map.get("jDate")[0]);
        t.setUsername(map.get("userName")[0]);
        t.setPassword(map.get("password")[0]);
        return tourManagerDAO.save(t);
    }

    @Override
    public TourManager update(HttpServletRequest request) {
        Map<String, String[]> map = request.getParameterMap();
        TourManager t = new TourManager();
        t.setId(Integer.parseInt(map.get("id")[0]));
        t.setFirstName(map.get("firstName")[0]);
        t.setLastName(map.get("lastName")[0]);
        t.setEmail(map.get("email")[0]);
        t.setPhone(map.get("phone")[0]);
        t.setCity(map.get("city")[0]);
        t.setDob(map.get("dob")[0]);
        t.setNid(map.get("nid")[0]);
        t.setjDate(map.get("jDate")[0]);
        t.setUsername(map.get("userName")[0]);
        t.setPassword(map.get("password")[0]);
        return tourManagerDAO.update(t);

    }

    @Override
    public TourManager delete(int id) {
        return tourManagerDAO.delete(id);
    }

    @Override
    public List<TourManager> getAll() {
        return tourManagerDAO.getAll();

    }

    @Override
    public TourManager getById(int id) {
        return tourManagerDAO.getById(id);

    }

}
