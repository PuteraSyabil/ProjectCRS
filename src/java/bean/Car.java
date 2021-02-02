/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;

/**
 *
 * @author pharveish
 */
public class Car {
    private int carNo;
    private String model;
    private String type;
    private String dateReceived;
    private boolean rentStatus, maintenance;
    private String file;
    private String path;

    public String getFile() {
        return file;
    }

    public boolean isMaintenance() {
        return maintenance;
    }

    public void setMaintenance(boolean maintenance) {
        this.maintenance = maintenance;
    }

    public void setFile(String file) {
        this.file = file;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }
    
    
    public int getCarNo() {
        return carNo;
    }

    public void setCarNo(int carNo) {
        this.carNo = carNo;
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

    public String getDateReceived() {
        return dateReceived;
    }

    public void setDateReceived(String dateReceived) {
        this.dateReceived = dateReceived;
    }

    public boolean isRentStatus() {
        return rentStatus;
    }

    public void setRentStatus(boolean rentStatus) {
        this.rentStatus = rentStatus;
    }
    
    public String getRentStatus(){
        if(isRentStatus()==false){
            return "Available";
        } else return "Unavailable";
    }
    
  
    
    public double getPrice(){
        
        double price;
        if(getType().equals("Sedan")){
            price=10.00;
        } else if(getType().equals("Hatchback")){
            price=10.00;
        } else if(getType().equals("MPV")){
            price=20.00;
        } else if(getType().equals("SUV")){
            price=20.00;
        } else price=30.00;
    
        return price;
    }
    
    public String priceString(){
        return String.format("%.2f", getPrice());
    }
    
    
}
