/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sample.finalproject.repository;

import com.sample.finalproject.entity.Accounts;
import java.io.Serializable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

/**
 *
 * @author baolu
 */
public interface AccountsRepository extends JpaRepository<Accounts, Integer>{
    @Query("select c from Accounts c where c.username = ?1 and c.pass = ?2")
    Accounts checkLogin(String user, String pass);
}
