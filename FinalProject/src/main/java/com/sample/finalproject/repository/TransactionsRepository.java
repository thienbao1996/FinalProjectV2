/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sample.finalproject.repository;

import com.sample.finalproject.entity.Transactions;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

/**
 *
 * @author My PC
 */
public interface TransactionsRepository extends JpaRepository<Transactions, Integer>{
    @Query("select c from Transactions c where c.employeeId = ?1")
    public Transactions findTransactionSearch(int search);
}
