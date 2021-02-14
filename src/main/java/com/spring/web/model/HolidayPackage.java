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
@Entity(name = "holidaypackage")
@Table(name = "holidaypackage")
public class HolidayPackage {

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
    private double bus;
    @Column(name = "train")
    private double train;
    @Column(name = "flightcost")
    private double flightCost;
    @Column(name = "food")
    private double food;
    @Column(name = "stayamount")
    private double stayAmount;

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

    @Override
    public String toString() {
        return "HolidayPackage{" + "id=" + id + ", place=" + place + ", description=" + description + ", arrivalDate=" + arrivalDate + ", departureDate=" + departureDate + ", adult=" + adult + ", children=" + children + ", days=" + days + ", night=" + night + ", bus=" + bus + ", train=" + train + ", flightCost=" + flightCost + ", food=" + food + ", stayAmount=" + stayAmount + '}';
    }

   

}
