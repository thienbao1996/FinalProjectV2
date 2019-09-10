/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sample.finalproject.repository;

import com.sample.finalproject.entity.Inventory;
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
    @Query("update Inventory c set c.note = ?1 where c.id = ?2")
    void updateInventory( String note, Integer id);
}
