/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sample.finalproject.repository;

import com.sample.finalproject.entity.Orders;
import java.io.Serializable;
import javax.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

/**
 *
 * @author baolu
 */
public interface OrdersRepository extends JpaRepository<Orders, Integer>{
    @Modifying
    @Transactional
    @Query("update Orders o set o.discount = ?1, o.tax = ?2, o.total = ?3 where o.id = ?4")
    void updateOrder(float discount, float tax, float total, int id);
}
