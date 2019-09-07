/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sample.finalproject.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author baolu
 */
@Entity
@Table(name = "ReturnBillDetail")
public class ReturnBillDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
    
    @Column(name = "productId")
    private int productId;
    
    @Column(name = "productName")
    private String productName;
    
    @Column(name = "quantity")
    private int quantity;
    
    @ManyToOne
    @JoinColumn(name = "returnBill_id")
    private ReturnBill returnBill;

    public ReturnBillDetail() {
    }

    public ReturnBillDetail(int productId, String productName, int quantity, ReturnBill returnBill) {
        this.productId = productId;
        this.productName = productName;
        this.quantity = quantity;
        this.returnBill = returnBill;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public ReturnBill getReturnBill() {
        return returnBill;
    }

    public void setReturnBill(ReturnBill returnBill) {
        this.returnBill = returnBill;
    }
    
    
}
