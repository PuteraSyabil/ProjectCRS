/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.sql.Date;
import java.text.SimpleDateFormat;

/**
 *
 * @author pharveish
 */
public class RentedBean {
    private int rentID, carNo, qduration; 
    private double duration, totalPrice, totalPrice2;
    private String rentDate, rentTime, model, type, firstname, lastname, ic, filename, type2, name;
    private boolean rentStatus;

    public int getQduration() {
        return qduration;
    }

    public void setQduration(int qduration) {
        this.qduration = qduration;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType2() {
        return type2;
    }

    public void setType2(String type2) {
        this.type2 = type2;
    }

    
    public double getTotalPrice2() {
        return totalPrice2;
    }

    public void setTotalPrice2(double totalPrice2) {
        this.totalPrice2 = totalPrice2;
    }

    public boolean isRentStatus() {
        return rentStatus;
    }

    public void setRentStatus(boolean rentStatus) {
        this.rentStatus = rentStatus;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getIc() {
        return ic;
    }

    public void setIc(String ic) {
        this.ic = ic;
    }

    public int getRentID() {
        return rentID;
    }

    public void setRentID(int rentID) {
        this.rentID = rentID;
    }

    public int getCarNo() {
        return carNo;
    }

    public void setCarNo(int carNo) {
        this.carNo = carNo;
    }

    public double getDuration() {
        return duration;
    }
    
    public String durationString(){
        return getDuration()+" hours";
    }

    public void setDuration(double duration) {
        this.duration = duration;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getRentDate() {
        return rentDate;
    }

    public void setRentDate(String rentDate) {
        this.rentDate = rentDate;
    }

    public String getRentTime() {
        return rentTime;
    }

    public void setRentTime(String rentTime) {
        this.rentTime = rentTime;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }
    
    public String getRentStatus(){
        String rentstatus;
        if(isRentStatus()){
            rentstatus = "Currently on Rent";
        } else rentstatus = "Returned";
        return rentstatus;
    }
    
}
