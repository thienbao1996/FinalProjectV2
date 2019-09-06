/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sample.finalproject.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
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
@Table(name = "Orders")
public class Orders implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
    
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    @Column(name = "createdate")
    private Date createdate;
    
    @Column(name = "quantity")
    private int quantity;
    
    @Column(name = "unit")
    private int unit;
    
    @Column(name = "discount")
    private float discount;
    
    @Column(name = "tax")
    private float tax;
    
    @Column(name = "total")
    private float total;
    
    public List<Products> listProducts;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "product", cascade = CascadeType.ALL, orphanRemoval = true)
    public List<Products> getListProducts() {
        return listProducts;
    }

    public void setListProducts(List<Products> listProducts) {
        this.listProducts = listProducts;
    }

    public Orders() {
    }

    public Orders(Date createdate, int quantity, int unit, float discount, float tax, float total) {
        this.createdate = createdate;
        this.quantity = quantity;
        this.unit = unit;
        this.discount = discount;
        this.tax = tax;
        this.total = total;
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

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getUnit() {
        return unit;
    }

    public void setUnit(int unit) {
        this.unit = unit;
    }

    public float getDiscount() {
        return discount;
    }

    public void setDiscount(float discount) {
        this.discount = discount;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    public float getTax() {
        return tax;
    }

    public void setTax(float tax) {
        this.tax = tax;
    }
    
    
}
