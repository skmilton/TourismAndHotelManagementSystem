/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.dao.impl;


import com.spring.web.common.ICommonDAO;
import com.spring.web.model.Tourist;

/**
 *
 * @author Dhaka
 */
public interface ITouristDAO extends ICommonDAO<Tourist>{
    
    public Tourist userInformationSave(Tourist t);
    
    public Tourist getInvoice(String phone);
    
    
}
