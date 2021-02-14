/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.service;

import com.spring.web.dao.impl.IHotelDAO;
import com.spring.web.model.Hotel;
import com.spring.web.service.impl.IHotelService;
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
public class HotelService implements IHotelService {

    @Autowired
    IHotelDAO hotelDAO;

    @Override
    public Hotel save(HttpServletRequest request) {

        Map<String, String[]> map = request.getParameterMap();
        Hotel t = new Hotel();
        t.sethName(map.get("hName")[0]);
        t.sethLocation(map.get("hLocation")[0]);
        t.setEntryDate(map.get("entryDate")[0]);
        t.setExpireDate(map.get("expireDate")[0]);
        t.setDescription(map.get("description")[0]);
        t.sethCode(map.get("hCode")[0]);
        t.setPhone(map.get("phone")[0]);
        t.setEmail(map.get("email")[0]);
        t.setPassword(map.get("password")[0]);
        return hotelDAO.save(t);

    }

    @Override
    public Hotel update(HttpServletRequest request) {
        Map<String, String[]> map = request.getParameterMap();
        Hotel t = new Hotel();
        t.setId(Integer.parseInt(map.get("id")[0]));
        t.sethName(map.get("hName")[0]);
        t.sethLocation(map.get("hLocation")[0]);
        t.setEntryDate(map.get("entryDate")[0]);
        t.setExpireDate(map.get("expireDate")[0]);
        t.setDescription(map.get("description")[0]);
        t.sethCode(map.get("hCode")[0]);
        t.setPhone(map.get("phone")[0]);
        t.setEmail(map.get("email")[0]);
        t.setPassword(map.get("password")[0]);
        return hotelDAO.update(t);

    }

    @Override
    public Hotel delete(int id) {
        return hotelDAO.delete(id);
    }

    @Override
    public List<Hotel> getAll() {
        return hotelDAO.getAll();

    }

    @Override
    public Hotel getById(int id) {
        return hotelDAO.getById(id);

    }

}
