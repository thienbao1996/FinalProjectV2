/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sample.finalproject.repository;

import com.sample.finalproject.entity.ReturnBillDetail;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

/**
 *
 * @author baolu
 */
public interface ReturnBillDetailRepository extends JpaRepository<ReturnBillDetail, Integer>{
    @Query("select c from ReturnBillDetail c where c.returnBill.id = ?1")
    List<ReturnBillDetail> findById(int returnBillId);
}
