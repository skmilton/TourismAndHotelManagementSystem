/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.service;

import com.spring.web.dao.impl.IPaymentDAO;
import com.spring.web.model.Payment;
import com.spring.web.service.impl.IPaymentService;
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
public class PaymentService implements IPaymentService {

    @Autowired
    IPaymentDAO paymentDAO;

    @Override
    public Payment save(HttpServletRequest request) {

        Map<String, String[]> map = request.getParameterMap();

        Payment p = new Payment();
        p.setCartType(map.get("cartType")[0]);
        p.setBankName(map.get("bankName")[0]);
        p.setExpireDate(map.get("expireDate")[0]);
        p.setCartNo(map.get("cartNo")[0]);
        p.setCvvNo(map.get("cvvNo")[0]);

        return paymentDAO.save(p);

    }

    @Override
    public Payment update(HttpServletRequest request) {

        Map<String, String[]> map = request.getParameterMap();
        Payment p = new Payment();
        p.setId(Integer.parseInt(map.get("id")[0]));
        p.setCartType(map.get("cartType")[0]);
        p.setBankName(map.get("bankName")[0]);
        p.setExpireDate(map.get("expireDate")[0]);
        p.setCartNo(map.get("cartNo")[0]);
        p.setCvvNo(map.get("cvvNo")[0]);

        return paymentDAO.update(p);

    }

    @Override
    public Payment delete(int id) {
        return paymentDAO.delete(id);
    }

    @Override
    public List<Payment> getAll() {
        return paymentDAO.getAll();

    }

    @Override
    public Payment getById(int id) {
        return paymentDAO.getById(id);

    }

}
