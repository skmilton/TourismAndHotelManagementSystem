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
@Entity
//@Table(name = "roomBooking")
public class RoomBooking {

    @Id
    @Column(name = "id")
    private int id;
    @Column(name = "roomCode")
    private String roomCode;
    @Column(name = "roomStatus")
    private String roomStatus;
    @Column(name = "roomInfo")
    private String roomInfo;
    @Column(name = "checkIn")
    private String checkIn;
    @Column(name = "checkOut")
    private String checkOut;
    @Column(name = "days")
    private String days;
  
    @Column(name = "roomPrice")
    private double roomPrice;

    @Column(name = "total")
    private Double total;
    @Column(name = "discount")
    private Double discount;
    @Column(name = "vat")
    private Double vat;
    @Column(name = "grandTotal")
    private Double grandTotal;
    @Column(name = "tVat")
    private Double tVat;
    @Column(name = "netTotal")
    private Double netTotal;
    @Column(name = "tDiscount")
    private Double tDiscount;
    @Column(name = "invoiceDate")
    private String invoiceDate;
    @Column(name = "image")
    private String image;
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRoomCode() {
        return roomCode;
    }

    public void setRoomCode(String roomCode) {
        this.roomCode = roomCode;
    }

    public String getRoomStatus() {
        return roomStatus;
    }

    public void setRoomStatus(String roomStatus) {
        this.roomStatus = roomStatus;
    }

    public String getRoomInfo() {
        return roomInfo;
    }

    public void setRoomInfo(String roomInfo) {
        this.roomInfo = roomInfo;
    }

    public String getCheckIn() {
        return checkIn;
    }

    public void setCheckIn(String checkIn) {
        this.checkIn = checkIn;
    }

    public String getCheckOut() {
        return checkOut;
    }

    public void setCheckOut(String checkOut) {
        this.checkOut = checkOut;
    }

    public String getDays() {
        return days;
    }

    public void setDays(String days) {
        this.days = days;
    }

    
    public double getRoomPrice() {
        return roomPrice;
    }

    public void setRoomPrice(double roomPrice) {
        this.roomPrice = roomPrice;
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

    public String getInvoiceDate() {
        return invoiceDate;
    }

    public void setInvoiceDate(String invoiceDate) {
        this.invoiceDate = invoiceDate;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

}
