/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.service.impl;

import com.spring.web.common.ICommonService;
import com.spring.web.model.RoomBooking;
import com.spring.web.model.Tourist;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Dhaka
 */
public interface ITouristService extends ICommonService<Tourist>{
    
    public Tourist userInformationSave(HttpServletRequest request);
        
    
        
        
 
    
}
