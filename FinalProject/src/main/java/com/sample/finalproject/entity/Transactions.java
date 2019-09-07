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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author My PC
 */
@Entity
@Table(name = "Transactions")
public class Transactions implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
    @Column(name = "createdate")
    private Date createDate;
    @Column(name = "total")
    private double total;
    @Column(name = "employee_id")
    private Integer employeeId;

    public Transactions(Integer id, Date createDate, double total, Integer employeeId) {
        this.id = id;
        this.createDate = createDate;
        this.total = total;
        this.employeeId = employeeId;
    }

    


    public Transactions() {
    }

    public Transactions(Integer id, Date createDate, float total) {
        this.id = id;
        this.createDate = createDate;
        this.total = total;
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

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public Integer getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(Integer employeeId) {
        this.employeeId = employeeId;
    }

    
    
    
}
