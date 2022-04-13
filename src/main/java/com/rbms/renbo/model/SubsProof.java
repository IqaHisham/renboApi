/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.rbms.renbo.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 *
 * @author Syafiqah Nabilah
 */
@Entity
@Table(name = "subsproof", schema ="renboms")
public class SubsProof {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "subsProofId")
    int subsProofId;
    
//    @Column(name = "ownerID")
//    int ownerID;
    
//    @Column(name = "subsID")
//    int subsID;
    
    @Column(name = "paymentProof")    
    String paymentProof;
    @Column(name = "subs_StartDate")
    String subsStartDate;
    @Column(name = "subs_EndDate")
    String subsEndDate;
    @Column(name ="subsActive")
    String subsActive;
    
   @ManyToOne(cascade = CascadeType.ALL)
   @JoinColumn(name = "subsID")
    private subscribe subscribe;
   
   @OneToOne
   @JoinColumn(name="ownerID")
   private Owners owner;
   
    public int getSubsProofId() {
        return subsProofId;
    }
    public void setSubsProofId(int subsProofId) {
        this.subsProofId = subsProofId;
    }

//    public int getOwnerID() {
//        return ownerID;
//    }
//
//    public void setOwnerID(int ownerID) {
//        this.ownerID = ownerID;
//    }

//    public int getSubsID() {
//        return subsID;
//    }
//
//    public void setSubsID(int subsID) {
//        this.subsID = subsID;
//    }

    public String getPaymentProof() {
        return paymentProof;
    }

    public void setPaymentProof(String paymentProof) {
        this.paymentProof = paymentProof;
    }

    public String getSubsStartDate() {
        return subsStartDate;
    }

    public void setSubsStartDate(String subsStartDate) {
        this.subsStartDate = subsStartDate;
    }

    public String getSubsEndDate() {
        return subsEndDate;
    }

    public void setSubsEndDate(String subsEndDate) {
        this.subsEndDate = subsEndDate;
    }
    

    public String getSubsActive() {
        return subsActive;
    }

    public void setSubsActive(String subsActive) {
        this.subsActive = subsActive;
    }

@Transient
    public String getPhotosImagePath() {
        if (paymentProof == null) return null;
         
        return "/img/proof/" + paymentProof;
    }

    @Override
    public String toString() {
        return "SubsProof{" + "subsProofId=" + subsProofId + ", paymentProof=" + paymentProof + ", subsStartDate=" + subsStartDate + ", subsEndDate=" + subsEndDate + ", subsActive=" + subsActive;
    }
   
}
