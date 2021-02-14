/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.service;

import com.spring.web.dao.impl.IProfileDAO;
import com.spring.web.model.Profile;
import com.spring.web.service.impl.IProfileService;
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

public class ProfileService implements IProfileService {

    @Autowired
    IProfileDAO profileDAO;

    @Override
    public Profile save(HttpServletRequest request) {

        Map<String, String[]> map = request.getParameterMap();
        Profile t = new Profile();
        t.setFirstName(map.get("firstName")[0]);
        t.setLastName(map.get("lastName")[0]);
        t.setEmail(map.get("email")[0]);
        t.setPhone(map.get("phone")[0]);
        t.setCity(map.get("city")[0]);
        t.setDob(map.get("dob")[0]);
        t.setNid(map.get("nid")[0]);
        t.setUserN(map.get("userN")[0]);
        t.setPass(map.get("pass")[0]);
        return profileDAO.save(t);
    }

    @Override
    public Profile update(HttpServletRequest request) {
        Map<String, String[]> map = request.getParameterMap();
        Profile t = new Profile();
        t.setId(Integer.parseInt(map.get("id")[0]));
        t.setFirstName(map.get("firstName")[0]);
        t.setLastName(map.get("lastName")[0]);
        t.setEmail(map.get("email")[0]);
        t.setPhone(map.get("phone")[0]);
        t.setCity(map.get("city")[0]);
        t.setDob(map.get("dob")[0]);
        t.setNid(map.get("nid")[0]);
        t.setUserN(map.get("userN")[0]);
        t.setPass(map.get("pass")[0]);
        return profileDAO.update(t);

    }

    @Override
    public Profile delete(int id) {
        return profileDAO.delete(id);
    }

    @Override
    public List<Profile> getAll() {
        return profileDAO.getAll();

    }

    @Override
    public Profile getById(int id) {
        return profileDAO.getById(id);

    }

}
