/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.rbms.renbo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author Syafiqah Nabilah
 */
@Entity
@Table(name = "renbo", schema ="renboms")
public class Renbo {
    @Id
    @Column(name = "renboID")
    int renboID;
    
    @Column(name = "renboFirstName")
    String renboFirstName;
    @Column(name = "renboLastName")    
    String renboLastName;
    @Column(name = "renboEmail")    
    String renboEmail;
    @Column(name = "renboAddress")
    String renboAddress;
    @Column(name = "renboPhoneNo")
    String renboPhoneNo;

    public int getRenboID() {
        return renboID;
    }

    public void setRenboID(int renboID) {
        this.renboID = renboID;
    }

    public String getRenboFirstName() {
        return renboFirstName;
    }

    public void setRenboFirstName(String renboFirstName) {
        this.renboFirstName = renboFirstName;
    }

    public String getRenboLastName() {
        return renboLastName;
    }

    public void setRenboLastName(String renboLastName) {
        this.renboLastName = renboLastName;
    }

    public String getRenboEmail() {
        return renboEmail;
    }

    public void setRenboEmail(String renboEmail) {
        this.renboEmail = renboEmail;
    }

    public String getRenboAddress() {
        return renboAddress;
    }

    public void setRenboAddress(String renboAddress) {
        this.renboAddress = renboAddress;
    }

    public String getRenboPhoneNo() {
        return renboPhoneNo;
    }

    public void setRenboPhoneNo(String renboPhoneNo) {
        this.renboPhoneNo = renboPhoneNo;
    }
    
    
}
