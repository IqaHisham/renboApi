/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.rbms.renbo.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 *
 * @author Syafiqah Nabilah
 */
@Entity
@Table(name = "owners", schema ="renboms")
public class Owners{
    @Id
    @Column(name = "ownerID")
    int ownerID;
    
    @Column(name = "ownerFirstName")
    String ownerFirstName;
    
    @Column(name = "ownerLastName")
    String ownerLastName;
    
    @Column(name = "ownerNoAccount")    
    String ownerNoAccount;
    
    @Column(name = "ownerEmail")    
    String ownerEmail;
    
    @Column(name = "ownerAddress")            
    String ownerAddress;
    
    @Column(name = "ownerPhoneNo")
    String ownerPhoneNo;
    
     @ManyToOne(cascade = CascadeType.ALL)
     @JoinColumn(name = "subsID")
//     @JoinTable(name = "subsproof", joinColumns = {@JoinColumn(name = "ownerID", referencedColumnName = "ownerID")},
//            inverseJoinColumns = {@JoinColumn(name = "subsID", referencedColumnName = "subsID")})
    private subscribe subsPlan;
    
    @OneToOne(mappedBy="owner")
    private SubsProof subproof;
    
    
    public int getOwnerID() {
        return ownerID;
    }

    public void setOwnerID(int ownerID) {
        this.ownerID = ownerID;
    }

    public String getOwnerFirstName() {
        return ownerFirstName;
    }

    public void setOwnerFirstName(String ownerFirstName) {
        this.ownerFirstName = ownerFirstName;
    }

    public String getOwnerLastName() {
        return ownerLastName;
    }

    public void setOwnerLastName(String ownerLastName) {
        this.ownerLastName = ownerLastName;
    }

    public String getOwnerNoAccount() {
        return ownerNoAccount;
    }

    public void setOwnerNoAccount(String ownerNoAccount) {
        this.ownerNoAccount = ownerNoAccount;
    }

    public String getOwnerEmail() {
        return ownerEmail;
    }

    public void setOwnerEmail(String ownerEmail) {
        this.ownerEmail = ownerEmail;
    }

    public String getOwnerAddress() {
        return ownerAddress;
    }

    public void setOwnerAddress(String ownerAddress) {
        this.ownerAddress = ownerAddress;
    }


    public String getOwnerPhoneNo() {
        return ownerPhoneNo;
    }

    public void setOwnerPhoneNo(String ownerPhoneNo) {
        this.ownerPhoneNo = ownerPhoneNo;
    }

    public subscribe getSubsPlan() {
        return subsPlan;
    }

    public void setSubsPlan(subscribe subsPlan) {
        this.subsPlan = subsPlan;
    }

    public SubsProof getSubproof() {
        return subproof;
    }

    public void setSubproof(SubsProof subproof) {
        this.subproof = subproof;
    }


    @Override
    public String toString() {
        return "Owners{" + "ownerID=" + ownerID + ", ownerFirstName=" + ownerFirstName + ", ownerLastName=" + ownerLastName + ", ownerNoAccount=" + ownerNoAccount + ", ownerEmail=" + ownerEmail + ", ownerAddress=" + ownerAddress + ", ownerPhoneNo=" + ownerPhoneNo +", subsPlan=" + subsPlan + '}';
    }
    
    
            
}
