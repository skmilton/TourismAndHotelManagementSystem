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
 * @author B7
 */
@Entity(name = "cart")
@Table(name = "cart")
public class Cart {

    @Id
    @Column(name = "id")
    private int id;
    @Column(name = "place")
    private String place;
    @Column(name = "description")
    private String description;
    @Column(name = "arrivalDate")
    private String arrivalDate;
    @Column(name = "departureDate")
    private String departureDate;
    @Column(name = "adult")
    private String adult;
    @Column(name = "children")
    private String children;
    @Column(name = "days")
    private String days;
    @Column(name = "night")
    private String night;
    @Column(name = "bus")
    private Double bus;
    @Column(name = "train")
    private Double train;
    @Column(name = "flightCost")
    private Double flightCost;
    @Column(name = "food")
    private Double food;
    @Column(name = "stayAmount")
    private Double stayAmount;

    @Column(name = "image")
    private String image;

    @Column(name = "code")
    private String code;
    @Column(name = "total")
    private Double total;
    @Column(name = "discount")
    private Double discount;
    @Column(name = "vat")
    private Double vat;
    @Column(name = "others")
    private Double others;
    @Column(name = "grandTotal")
    private Double grandTotal;
    @Column(name = "tVat")
    private Double tVat;
    @Column(name = "netTotal")
    private Double netTotal;
    @Column(name = "tDiscount")
    private Double tDiscount;
    @Column(name = "accNo")
    private String accNo;
    @Column(name = "invoiceDate")
    private String invoiceDate;

    @Column(name = "firstName")
    private String firstName;
    @Column(name = "lastName")
    private String lastName;
    @Column(name = "email")
    private String email;
    @Column(name = "phone")
    private String phone;
    @Column(name = "city")
    private String city;
    @Column(name = "dob")
    private String dob;
    @Column(name = "nid")
    private String nid;
    @Column(name = "username")
    private String username;
    @Column(name = "password")
    private String password;

    @Column(name = "cartType")
    private String cartType;
    @Column(name = "expireDate")
    private String expireDate;
    @Column(name = "cartNo")
    private String cartNo;
    @Column(name = "cvvNo")
    private String cvvNo;
    
    private String status;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getArrivalDate() {
        return arrivalDate;
    }

    public void setArrivalDate(String arrivalDate) {
        this.arrivalDate = arrivalDate;
    }

    public String getDepartureDate() {
        return departureDate;
    }

    public void setDepartureDate(String departureDate) {
        this.departureDate = departureDate;
    }

    public String getAdult() {
        return adult;
    }

    public void setAdult(String adult) {
        this.adult = adult;
    }

    public String getChildren() {
        return children;
    }

    public void setChildren(String children) {
        this.children = children;
    }

    public String getDays() {
        return days;
    }

    public void setDays(String days) {
        this.days = days;
    }

    public String getNight() {
        return night;
    }

    public void setNight(String night) {
        this.night = night;
    }

    public Double getBus() {
        return bus;
    }

    public void setBus(Double bus) {
        this.bus = bus;
    }

    public Double getTrain() {
        return train;
    }

    public void setTrain(Double train) {
        this.train = train;
    }

    public Double getFlightCost() {
        return flightCost;
    }

    public void setFlightCost(Double flightCost) {
        this.flightCost = flightCost;
    }

    public Double getFood() {
        return food;
    }

    public void setFood(Double food) {
        this.food = food;
    }

    public Double getStayAmount() {
        return stayAmount;
    }

    public void setStayAmount(Double stayAmount) {
        this.stayAmount = stayAmount;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    public Double getDiscount() {
        return discount;
    }

    public void setDiscount(Double discount) {
        this.discount = discount;
    }

    public Double getVat() {
        return vat;
    }

    public void setVat(Double vat) {
        this.vat = vat;
    }

    public Double getOthers() {
        return others;
    }

    public void setOthers(Double others) {
        this.others = others;
    }

    public Double getGrandTotal() {
        return grandTotal;
    }

    public void setGrandTotal(Double grandTotal) {
        this.grandTotal = grandTotal;
    }

    public Double gettVat() {
        return tVat;
    }

    public void settVat(Double tVat) {
        this.tVat = tVat;
    }

    public Double getNetTotal() {
        return netTotal;
    }

    public void setNetTotal(Double netTotal) {
        this.netTotal = netTotal;
    }

    public Double gettDiscount() {
        return tDiscount;
    }

    public void settDiscount(Double tDiscount) {
        this.tDiscount = tDiscount;
    }

    public String getAccNo() {
        return accNo;
    }

    public void setAccNo(String accNo) {
        this.accNo = accNo;
    }

    public String getInvoiceDate() {
        return invoiceDate;
    }

    public void setInvoiceDate(String invoiceDate) {
        this.invoiceDate = invoiceDate;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getNid() {
        return nid;
    }

    public void setNid(String nid) {
        this.nid = nid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCartType() {
        return cartType;
    }

    public void setCartType(String cartType) {
        this.cartType = cartType;
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

}
