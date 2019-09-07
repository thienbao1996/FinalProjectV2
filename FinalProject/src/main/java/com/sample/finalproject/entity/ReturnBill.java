/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sample.finalproject.entity;

import java.util.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import org.springframework.format.annotation.DateTimeFormat;

/**
 *
 * @author baolu
 */
@Entity
@Table(name = "ReturnBill")
public class ReturnBill {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
    
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    @Column(name = "createdate")
    private Date createdate;
    
    @OneToMany(mappedBy = "returnBill")
    private List<ReturnBillDetail> returnBillDetails;

    public ReturnBill() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getCreatedate() {
        return createdate;
    }

    public void setCreatedate(Date createdate) {
        this.createdate = createdate;
    }

    public List<ReturnBillDetail> getReturnBillDetails() {
        return returnBillDetails;
    }

    public void setReturnBillDetails(List<ReturnBillDetail> returnBillDetails) {
        this.returnBillDetails = returnBillDetails;
    }
    
    
}
