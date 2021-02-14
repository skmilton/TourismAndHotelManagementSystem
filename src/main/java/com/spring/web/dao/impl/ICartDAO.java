/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.dao.impl;

import com.spring.web.common.ICommonDAO;
import com.spring.web.model.Cart;

import java.util.List;

/**
 *
 * @author B7
 */
public interface ICartDAO extends ICommonDAO<Cart>{
    public List<Cart> getByAvailable();
     public List<Cart> getByBooked();
     public List<Cart> getByPlace(String place);
     public Cart getCartByPackageCode(String code);
     
}
