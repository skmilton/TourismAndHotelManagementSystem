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
@Entity(name = "hotel")
@Table(name = "hotel")
public class Hotel {

    @Id
    @Column(name = "id")
    private int id;
    @Column(name = "hName")
    private String hName;
    @Column(name = "hLocation")
    private String hLocation;
    @Column(name = "entryDate")
    private String entryDate;
    @Column(name = "expireDate")
    private String expireDate;
    @Column(name = "description")
    private String description;
    @Column(name = "hCode")
    private String hCode;
    @Column(name = "phone")
    private String phone;
    @Column(name = "email")
    private String email;
    @Column(name = "password")
    private String password;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String gethName() {
        return hName;
    }

    public void sethName(String hName) {
        this.hName = hName;
    }

    public String gethLocation() {
        return hLocation;
    }

    public void sethLocation(String hLocation) {
        this.hLocation = hLocation;
    }

    public String getEntryDate() {
        return entryDate;
    }

    public void setEntryDate(String entryDate) {
        this.entryDate = entryDate;
    }

    public String getExpireDate() {
        return expireDate;
    }

    public void setExpireDate(String expireDate) {
        this.expireDate = expireDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String gethCode() {
        return hCode;
    }

    public void sethCode(String hCode) {
        this.hCode = hCode;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Hotel{" + "id=" + id + ", hName=" + hName + ", hLocation=" + hLocation + ", entryDate=" + entryDate + ", expireDate=" + expireDate + ", description=" + description + ", hCode=" + hCode + ", phone=" + phone + ", email=" + email + ", password=" + password + '}';
    }

}
