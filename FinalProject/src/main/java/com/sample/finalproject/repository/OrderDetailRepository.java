/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sample.finalproject.repository;

import com.sample.finalproject.entity.OrderDetail;
import java.io.Serializable;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author baolu
 */
public interface OrderDetailRepository extends JpaRepository<OrderDetail, Integer>{
    
}
