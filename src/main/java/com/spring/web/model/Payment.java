/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.web.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Dhaka
 */
@Entity(name = "payment")
@Table(name = "payment")
public class Payment {

    @Id
    @Column(name = "id")
    private int id;
    @Column(name = "cartType")
    private String cartType;
    @Column(name = "bankName")
    private String bankName;
    @Column(name = "expireDate")
    private String expireDate;
    @Column(name = "cartNo")
    private String cartNo;
    @Column(name = "cvvNo")
    private String cvvNo;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCartType() {
        return cartType;
    }

    public void setCartType(String cartType) {
        this.cartType = cartType;
    }

    public String getBankName() {
        return bankName;
    }

    public void setBankName(String bankName) {
        this.bankName = bankName;
    }

    public String getExpireDate() {
        return expireDate;
    }

    public void setExpireDate(String expireDate) {
        this.expireDate = expireDate;
    }

    public String getCartNo() {
        return cartNo;
    }

    public void setCartNo(String cartNo) {
        this.cartNo = cartNo;
    }

    public String getCvvNo() {
        return cvvNo;
    }

    public void setCvvNo(String cvvNo) {
        this.cvvNo = cvvNo;
    }

    @Override
    public String toString() {
        return "Payment{" + "id=" + id + ", cartType=" + cartType + ", bankName=" + bankName + ", expireDate=" + expireDate + ", cartNo=" + cartNo + ", cvvNo=" + cvvNo + '}';
    }
    

}
