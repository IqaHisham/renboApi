/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.rbms.renbo.model;

import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author Syafiqah Nabilah
 */
@Entity
@Table(name = "subsplan", schema ="renboms")
public class subscribe {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "subsID")
    int subsID;
    
    @Column(name="subsName")
    String subsName;
    
    @Column(name="subItemNo")
    int subItemNo;
    
    @Column(name="subsSC")
    double subsSC;
    
    @Column(name="subsPeriod")
    int subsPeriod;
    
    @Column(name="subsPrice")
    String subsPrice;
    
    @Column(name="subsFeatPeriod")
    int subsFeatPeriod;
    
    @OneToMany(mappedBy = "subsPlan")
    private List<Owners> owner;
    
    @OneToMany(mappedBy = "subscribe")
    private List<SubsProof> subsproof;
    
//    private SubsProof subsprooftable;
    public int getSubsID() {
        return subsID;
    }

    public void setSubsID(int subsID) {
        this.subsID = subsID;
    }

    public String getSubsName() {
        return subsName;
    }

    public void setSubsName(String subsName) {
        this.subsName = subsName;
    }

    public int getSubItemNo() {
        return subItemNo;
    }

    public void setSubItemNo(int subItemNo) {
        this.subItemNo = subItemNo;
    }

 

    public double getSubsSC() {
        return subsSC;
    }

    public void setSubsSC(double subsSC) {
        this.subsSC = subsSC;
    }

    public int getSubsPeriod() {
        return subsPeriod;
    }

    public void setSubsPeriod(int subsPeriod) {
        this.subsPeriod = subsPeriod;
    }

    public String getSubsPrice() {
        return subsPrice;
    }

    public void setSubsPrice(String subsPrice) {
        this.subsPrice = subsPrice;
    }

    public int getSubsFeatPeriod() {
        return subsFeatPeriod;
    }

    public void setSubsFeatPeriod(int subsFeatPeriod) {
        this.subsFeatPeriod = subsFeatPeriod;
    }

}
