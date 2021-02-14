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
@Entity(name = "paymentSystem")
@Table(name = "paymentSystem")
public class PaymentSystem {

    @Id
    //cart
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
    private double bus;
    @Column(name = "train")
    private double train;
    @Column(name = "flightCost")
    private double flightCost;
    @Column(name = "food")
    private double food;
    @Column(name = "stayAmount")
    private double stayAmount;
   
    @Column(name = "image")
    private String image;

    //payment
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
    //tourist
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
    @Column(name = "jDate")
    private String jDate;
    @Column(name = "username")
    private String username;
    @Column(name = "password")
    private String password;

 
    @Column(name = "code")
    private String code;
    @Column(name = "total")
    private double total;
    @Column(name = "discount")
    private double discount;
    @Column(name = "vat")
    private double vat;
    @Column(name = "others")
    private double others;
    @Column(name = "grandTotal")
    private double grandTotal;
    @Column(name = "tVat")
    private double tVat;
    @Column(name = "netTotal")
    private double netTotal;
    @Column(name = "tDiscount")
    private double tDiscount;
    @Column(name = "accNo")
    private String accNo;
   @Column(name = "invoiceDate")
    private String invoiceDate;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public double getBus() {
        return bus;
    }

    public void setBus(double bus) {
        this.bus = bus;
    }

    public double getTrain() {
        return train;
    }

    public void setTrain(double train) {
        this.train = train;
    }

    public double getFlightCost() {
        return flightCost;
    }

    public void setFlightCost(double flightCost) {
        this.flightCost = flightCost;
    }

    public double getFood() {
        return food;
    }

    public void setFood(double food) {
        this.food = food;
    }

    public double getStayAmount() {
        return stayAmount;
    }

    public void setStayAmount(double stayAmount) {
        this.stayAmount = stayAmount;
    }


 

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
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

    public String getjDate() {
        return jDate;
    }

    public void setjDate(String jDate) {
        this.jDate = jDate;
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

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public double getVat() {
        return vat;
    }

    public void setVat(double vat) {
        this.vat = vat;
    }

    public double getOthers() {
        return others;
    }

    public void setOthers(double others) {
        this.others = others;
    }

    public double getGrandTotal() {
        return grandTotal;
    }

    public void setGrandTotal(double grandTotal) {
        this.grandTotal = grandTotal;
    }

    public double gettVat() {
        return tVat;
    }

    public void settVat(double tVat) {
        this.tVat = tVat;
    }

    public double getNetTotal() {
        return netTotal;
    }

    public void setNetTotal(double netTotal) {
        this.netTotal = netTotal;
    }

    public double gettDiscount() {
        return tDiscount;
    }

    public void settDiscount(double tDiscount) {
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


}
