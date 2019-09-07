/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sample.finalproject.repository;

import com.sample.finalproject.entity.Employees;
import javax.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

/**
 *
 * @author My PC
 */
public interface EmployeesRepository extends JpaRepository<Employees, Integer>{
    @Modifying
    @Transactional
    @Query("update Employees c set c.name = ?1, c.address = ?2, c.limit = ?3, c.status = ?4, c.note = ?5 where c.id = ?6")
    void updateEmployee(String name, String address, double limit, int status, String note, Integer id);
}
