/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sample.finalproject.repository;

import com.sample.finalproject.entity.Inventory;
import java.util.Date;
import javax.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

/**
 *
 * @author My PC
 */
public interface InventoryRepository extends JpaRepository<Inventory, Integer>{
    @Modifying
    @Transactional
    @Query("update Inventory c set c.createDate = ?1, c.note = ?2, c.product_id = ?3, c.unit = ?4, c.amount = ?5 where c.id = ?6")
    void updateInventory(Date createDate, String note, Integer product_id, String unit, double amount, Integer id);
}
