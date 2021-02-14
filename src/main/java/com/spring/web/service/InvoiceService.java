/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.service;

import com.spring.web.dao.impl.IInvoiceDAO;
import com.spring.web.model.Invoice;
import com.spring.web.service.impl.IInvoiceService;
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
public class InvoiceService implements IInvoiceService {

    @Autowired
    IInvoiceDAO invoiceDAO;

    @Override
    public Invoice save(HttpServletRequest request) {
        String name = request.getParameter("cName");
        String packegeName = request.getParameter("packageName");
        String code = request.getParameter("code");
        String gmail = request.getParameter("gmail");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String invoiceDate = request.getParameter("invoiceDate");
        String accNo = request.getParameter("accNo");
        Double rCost = Double.parseDouble(request.getParameter("rCost"));
        Double bus = Double.parseDouble(request.getParameter("bus"));
        Double train = Double.parseDouble(request.getParameter("train"));
        Double flightCost = Double.parseDouble(request.getParameter("flightCost"));
        Double food = Double.parseDouble(request.getParameter("food"));
        Double stayAmount = Double.parseDouble(request.getParameter("stayAmount"));
        Double others = Double.parseDouble(request.getParameter("others"));
        
        Double total = (rCost + bus + train + flightCost + food + stayAmount + others);
        
        Double discount = Double.parseDouble(request.getParameter("discount"));

        Double tDiscount = ((total  *discount)/ 100);//discount Amount
        System.out.println(tDiscount);
        Double netTotal = total - tDiscount;//without discount Amount
        System.out.println(netTotal);
        Double vat = Double.parseDouble(request.getParameter("vat"));
        Double tVat = ((netTotal  * vat)/ 100);//vat Amount
        System.out.println(tVat);
        Double grandTotal = (netTotal + tVat);
        System.out.println(grandTotal);

        Invoice i = new Invoice();
        i.setcName(name);
        i.setPackageName(packegeName);
        i.setAddress(address);
        i.setBus(bus);
        i.setCode(code);
        i.setDiscount(discount);
        i.setFlightCost(flightCost);
        i.setFood(food);
        i.setGmail(gmail);
        i.setAccNo(accNo);
        i.settVat(tVat);
        i.setNetTotal(netTotal);
        i.settDiscount(tDiscount);
        i.setGrandTotal(grandTotal);
        i.setInvoiceDate(invoiceDate);
        i.setrCost(rCost);
        i.setOthers(others);
        i.setPhone(phone);
        i.setStayAmount(stayAmount);
        i.setTotal(total);
        i.setTrain(train);
        i.setVat(vat);
        return invoiceDAO.save(i);
    }

    @Override
    public Invoice update(HttpServletRequest request) {
        Map<String, String[]> map = request.getParameterMap();
        int id=Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("cName");
        String packegeName = request.getParameter("packageName");
        String code = request.getParameter("code");
        String gmail = request.getParameter("gmail");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String invoiceDate = request.getParameter("invoiceDate");
        String accNo = request.getParameter("accNo");
        Double rCost = Double.parseDouble(request.getParameter("rCost"));
        Double bus = Double.parseDouble(request.getParameter("bus"));
        Double train = Double.parseDouble(request.getParameter("train"));
        Double flightCost = Double.parseDouble(request.getParameter("flightCost"));
        Double food = Double.parseDouble(request.getParameter("food"));
        Double stayAmount = Double.parseDouble(request.getParameter("stayAmount"));
        Double others = Double.parseDouble(request.getParameter("others"));
        Double total = (rCost + bus + train + flightCost + food + stayAmount + others);
        Double discount = Double.parseDouble(request.getParameter("discount"));

        Double tDiscount = ((total  *discount)/ 100);//discount Amount
        System.out.println(tDiscount);
        Double netTotal = total - tDiscount;//without discount Amount
        System.out.println(netTotal);
        Double vat = Double.parseDouble(request.getParameter("vat"));
        Double tVat = ((netTotal  * vat)/ 100);//vat Amount
        System.out.println(tVat);
        Double grandTotal = (netTotal + tVat);
        System.out.println(grandTotal);

        Invoice i = new Invoice();
        i.setcName(name);
        i.setPackageName(packegeName);
        i.setAddress(address);
        i.setBus(bus);
        i.setCode(code);
        i.setDiscount(discount);
        i.setFlightCost(flightCost);
        i.setFood(food);
        i.setGmail(gmail);
        i.setAccNo(accNo);
        i.settVat(tVat);
        i.setNetTotal(netTotal);
        i.settDiscount(tDiscount);
        i.setGrandTotal(grandTotal);
        i.setInvoiceDate(invoiceDate);
        i.setrCost(rCost);
        i.setOthers(others);
        i.setPhone(phone);
        i.setStayAmount(stayAmount);
        i.setTotal(total);
        i.setTrain(train);
        i.setVat(vat);
        return invoiceDAO.update(i);
    }

    @Override
    public Invoice delete(int id) {
        return invoiceDAO.delete(id);
    }

    @Override
    public List<Invoice> getAll() {
        return invoiceDAO.getAll();

    }

    @Override
    public Invoice getById(int id) {
        return invoiceDAO.getById(id);

    }

}
