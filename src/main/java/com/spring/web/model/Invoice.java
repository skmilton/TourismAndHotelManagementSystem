
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
@Entity(name = "invoice")
@Table(name = "invoice")
public class Invoice {

    @Id
    @Column(name = "id")
    private int id;
    @Column(name = "cName")
    private String cName;
    @Column(name = "gmail")
    private String gmail;
    @Column(name = "phone")
    private String phone;
    @Column(name = "packageName")
    private String packageName;
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
    @Column(name = "address")
    private String address;
    @Column(name = "invoiceDate")
    private String invoiceDate;
    @Column(name = "rCost")
    private Double rCost;

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

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName;
    }

    public String getPackageName() {
        return packageName;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getGmail() {
        return gmail;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getInvoiceDate() {
        return invoiceDate;
    }

    public void setInvoiceDate(String invoiceDate) {
        this.invoiceDate = invoiceDate;
    }

    public Double getrCost() {
        return rCost;
    }

    public void setrCost(Double rCost) {
        this.rCost = rCost;
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

    public Double getNetTotal() {
        return netTotal;
    }

    public void setNetTotal(Double netTotal) {
        this.netTotal = netTotal;
    }

    @Override
    public String toString() {
        return "Invoice{" + "id=" + id + ", cName=" + cName + ", packageName=" + packageName + ", code=" + code + ", gmail=" + gmail + ", address=" + address + ", phone=" + phone + ", invoiceDate=" + invoiceDate + ", rCost=" + rCost + ", bus=" + bus + ", train=" + train + ", flightCost=" + flightCost + ", food=" + food + ", stayAmount=" + stayAmount + ", total=" + total + ", discount=" + discount + ", vat=" + vat + ", others=" + others + ", grandTotal=" + grandTotal + ", tVat=" + tVat + ", tDiscount=" + tDiscount + ", accNo=" + accNo + '}';
    }

}
