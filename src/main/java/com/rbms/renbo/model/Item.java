/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rbms.renbo.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 *
 * @author Syafiqah Nabilah
 */
@Entity
@Table(name = "Item", schema = "renboms")
public class Item implements Serializable {
    @Id
    @Column(name = "itemID")
    @GeneratedValue(strategy = GenerationType.AUTO)
    int itemID;
    
    @Column(name="ownerID")
    int ownerID;
    
    @Column(name = "itemName")
    String itemName;

    @Column(name = "itemDesc")
    String itemDesc;

    @Column(name = "itemBrand")
    String itemBrand;
    
    @Column(name="itemHeight")
    String itemHeight;
        
    @Column(name="itemWidth")
    String itemWidth;

    @Column(name="itemDepth")
    String itemDepth;
           
    @Column(name = "itemWeight")
    String itemWeight;

    @Column(name = "itemCategory")
    String itemCategory;

    @Column(name = "itemQty")
    int itemQty;

    @Column(name = "itemMaterial")
    String itemMaterial;

    @Column(name = "itemSkim")
    String itemSkim;

    @Column(name = "itemRate")
    float itemRate;

    @Column(name = "itemRateDepo")
    float itemRateDepo;

    @Column(name = "itemPickMetho")
    String itemPickMetho;

    @Column(name = "itemRb_Location")
    String itemRb_Location;

    @Column(name = "itemLoc_add")
    String itemLoc_add;

    @Column(name = "itemLoc_state")
    String itemLoc_state;

    @Column(name = "itemLoc_city")
    String itemLoc_city;

    @Column(name = "itemImage_1")
    String itemImage_1;

    @Column(name = "itemImage_2")
    String itemImage_2;

    @Column(name = "itemImage_3")
    String itemImage_3;

    @Column(name = "itemAvailability")
    String itemAvailability;

    public int getItemID() {
        return itemID;
    }

    public void setItemID(int itemID) {
        this.itemID = itemID;
    }

    public int getOwnerID() {
        return ownerID;
    }

    public void setOwnerID(int ownerID) {
        this.ownerID = ownerID;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getItemDesc() {
        return itemDesc;
    }

    public void setItemDesc(String itemDesc) {
        this.itemDesc = itemDesc;
    }

    public String getItemBrand() {
        return itemBrand;
    }

    public void setItemBrand(String itemBrand) {
        this.itemBrand = itemBrand;
    }

    public String getItemHeight() {
        return itemHeight;
    }

    public void setItemHeight(String itemHeight) {
        this.itemHeight = itemHeight;
    }

    public String getItemWidth() {
        return itemWidth;
    }

    public void setItemWidth(String itemWidth) {
        this.itemWidth = itemWidth;
    }

    public String getItemDepth() {
        return itemDepth;
    }

    public void setItemDepth(String itemDepth) {
        this.itemDepth = itemDepth;
    }



    public String getItemWeight() {
        return itemWeight;
    }

    public void setItemWeight(String itemWeight) {
        this.itemWeight = itemWeight;
    }

    public String getItemCategory() {
        return itemCategory;
    }

    public void setItemCategory(String itemCategory) {
        this.itemCategory = itemCategory;
    }

    public int getItemQty() {
        return itemQty;
    }

    public void setItemQty(int itemQty) {
        this.itemQty = itemQty;
    }

    public String getItemMaterial() {
        return itemMaterial;
    }

    public void setItemMaterial(String itemMaterial) {
        this.itemMaterial = itemMaterial;
    }

    public String getItemSkim() {
        return itemSkim;
    }

    public void setItemSkim(String itemSkim) {
        this.itemSkim = itemSkim;
    }

    public float getItemRate() {
        return itemRate;
    }

    public void setItemRate(float itemRate) {
        this.itemRate = itemRate;
    }

    public float getItemRateDepo() {
        return itemRateDepo;
    }

    public void setItemRateDepo(float itemRateDepo) {
        this.itemRateDepo = itemRateDepo;
    }

    public String getItemPickMetho() {
        return itemPickMetho;
    }

    public void setItemPickMetho(String itemPickMetho) {
        this.itemPickMetho = itemPickMetho;
    }

    public String getItemRb_Location() {
        return itemRb_Location;
    }

    public void setItemRb_Location(String itemRb_Location) {
        this.itemRb_Location = itemRb_Location;
    }

    public String getItemLoc_add() {
        return itemLoc_add;
    }

    public void setItemLoc_add(String itemLoc_add) {
        this.itemLoc_add = itemLoc_add;
    }

    public String getItemLoc_state() {
        return itemLoc_state;
    }

    public void setItemLoc_state(String itemLoc_state) {
        this.itemLoc_state = itemLoc_state;
    }

    public String getItemLoc_city() {
        return itemLoc_city;
    }

    public void setItemLoc_city(String itemLoc_city) {
        this.itemLoc_city = itemLoc_city;
    }

    public String getItemImage_1() {
        return itemImage_1;
    }

    public void setItemImage_1(String itemImage_1) {
        this.itemImage_1 = itemImage_1;
    }

    public String getItemImage_2() {
        return itemImage_2;
    }

    public void setItemImage_2(String itemImage_2) {
        this.itemImage_2 = itemImage_2;
    }

    public String getItemImage_3() {
        return itemImage_3;
    }

    public void setItemImage_3(String itemImage_3) {
        this.itemImage_3 = itemImage_3;
    }

    public String getItemAvailability() {
        return itemAvailability;
    }

    public void setItemAvailability(String itemAvailability) {
        this.itemAvailability = itemAvailability;
    }

    @Transient
    public String getPhotosImagePath() {
        if (itemImage_1 == null) return null;
         
        return "/img/catalog/" + itemImage_1;
    }
    public String getPhotosImagePath2() {
        if (itemImage_1 == null) return null;
         
        return "/img/catalog/" + itemImage_2;
    }
    public String getPhotosImagePath3() {
        if (itemImage_1 == null) return null;
         
        return "/img/catalog/" + itemImage_3;
    }
    
    @Override
    public String toString() {
        return "Item{" + "itemID=" + itemID + ", itemName=" + itemName + ", itemDesc=" + itemDesc + ", itemBrand=" + itemBrand + ", itemHeight=" + itemHeight + ", itemWidth=" + itemWidth + ", itemDepth=" + itemDepth + ", itemWeight=" + itemWeight + ", itemCategory=" + itemCategory + ", itemQty=" + itemQty + ", itemMaterial=" + itemMaterial + ", itemSkim=" + itemSkim + ", itemRate=" + itemRate + ", itemRateDepo=" + itemRateDepo + ", itemPickMetho=" + itemPickMetho + ", itemRb_Location=" + itemRb_Location + ", itemLoc_add=" + itemLoc_add + ", itemLoc_state=" + itemLoc_state + ", itemLoc_city=" + itemLoc_city + ", itemImage_1=" + itemImage_1 + ", itemImage_2=" + itemImage_2 + ", itemImage_3=" + itemImage_3 + ", itemAvailability=" + itemAvailability + '}';
    }



}
