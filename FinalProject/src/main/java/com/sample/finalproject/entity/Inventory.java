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
    private String createDate;
    @Column(name = "note")
    private String note;
    @Column(name = "item_id")
    private Integer item_id;
    @Column(name = "unit")
    private String unit;
    @Column(name = "amount")
    private double amount;

    public Inventory() {
    }

    public Inventory(Integer id, String createDate, String note, Integer item_id, String unit, double amount) {
        this.id = id;
        this.createDate = createDate;
        this.note = note;
        this.item_id = item_id;
        this.unit = unit;
        this.amount = amount;
    }

    public Integer getItem_id() {
        return item_id;
    }

    public void setItem_id(Integer item_id) {
        this.item_id = item_id;
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

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    
}
