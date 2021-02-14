/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.service;

import com.spring.web.dao.impl.IHolidayPackageDAO;
import com.spring.web.model.HolidayPackage;
import com.spring.web.service.impl.IHolidayPackageService;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Dhaka
 */
@Service(value = "holidayPackageService")
public class HolidayPackageService implements IHolidayPackageService {

    @Autowired
    IHolidayPackageDAO holidayPackageDAO;

    @Override
    public HolidayPackage save(HttpServletRequest request) {

        Map<String, String[]> map = request.getParameterMap();
        HolidayPackage h = new HolidayPackage();
        h.setPlace(map.get("place")[0]);
        h.setDescription(map.get("description")[0]);
        h.setArrivalDate(map.get("arrivalDate")[0]);
        h.setDepartureDate(map.get("departureDate")[0]);
        h.setAdult(map.get("adult")[0]);
        h.setChildren(map.get("children")[0]);
        h.setDays(map.get("days")[0]);
        h.setNight(map.get("night")[0]);
        h.setBus(Double.parseDouble(map.get("bus")[0]));
        h.setTrain(Double.parseDouble(map.get("train")[0]));
        h.setFlightCost(Double.parseDouble(map.get("flightCost")[0]));
        h.setFood(Double.parseDouble(map.get("food")[0]));
        h.setStayAmount(Double.parseDouble(map.get("stayAmount")[0]));

        return holidayPackageDAO.save(h);

    }

    @Override
    public HolidayPackage update(HttpServletRequest request) {

        Map<String, String[]> map = request.getParameterMap();

        HolidayPackage h = new HolidayPackage();
        h.setId(Integer.parseInt(map.get("id")[0]));
        h.setPlace(map.get("place")[0]);
        h.setDescription(map.get("description")[0]);
        h.setArrivalDate(map.get("arrivalDate")[0]);
        h.setDepartureDate(map.get("departureDate")[0]);
        h.setAdult(map.get("adult")[0]);
        h.setChildren(map.get("children")[0]);
        h.setDays(map.get("days")[0]);
        h.setNight(map.get("night")[0]);
        h.setBus(Double.parseDouble(map.get("bus")[0]));
        h.setTrain(Double.parseDouble(map.get("train")[0]));
        h.setFlightCost(Double.parseDouble(map.get("flightCost")[0]));
        h.setFood(Double.parseDouble(map.get("food")[0]));
        h.setStayAmount(Double.parseDouble(map.get("stayAmount")[0]));
        return holidayPackageDAO.update(h);

    }

    @Override
    public HolidayPackage delete(int id) {
        return holidayPackageDAO.delete(id);
    }

    @Override
    public List<HolidayPackage> getAll() {
        return holidayPackageDAO.getAll();

    }

    @Override
    public HolidayPackage getById(int id) {
        return holidayPackageDAO.getById(id);

    }

}
