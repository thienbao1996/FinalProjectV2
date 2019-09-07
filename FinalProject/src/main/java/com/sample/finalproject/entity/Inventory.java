/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sample.finalproject.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author My PC
 */
@Entity
@Table(name = "Inventory")
public class Inventory implements Serializable{
    @Id
    @Column(name = "id")
    private Integer id;
    @Column(name = "createdate")
    private Date createDate;
    @Column(name = "note")
    private String note;
    @Column(name = "product_id")
    private Integer product_id;
    @Column(name = "unit")
    private String unit;
    @Column(name = "amount")
    private double amount;

    public Inventory() {
    }

    public Inventory(Integer id, Date createDate, String note, Integer product_id, String unit, double amount) {
        this.id = id;
        this.createDate = createDate;
        this.note = note;
        this.product_id = product_id;
        this.unit = unit;
        this.amount = amount;
    }

    public Integer getProduct_id() {
        return product_id;
    }

    public void setProduct_id(Integer product_id) {
        this.product_id = product_id;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    
}
