/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.service.impl;

import com.spring.web.common.ICommonService;
import com.spring.web.model.Cart;
import java.util.List;


/**
 *
 * @author B7
 */
public interface ICartService extends ICommonService<Cart>{
    public List<Cart> getByPlace();
    public double getTotalSales();
    public double getTotalVat();
     public List<Cart> getByAvailable();

    public List<Cart> getByBooked();
}
