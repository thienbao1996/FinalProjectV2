/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sample.finalproject.controller;

import com.sample.finalproject.entity.Employees;
import com.sample.finalproject.repository.EmployeesRepository;
import com.sample.finalproject.repository.TransactionsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author My PC
 */
@Controller
public class EmployeesController {
    @Autowired
    private EmployeesRepository employeesRepository;
    @Autowired
    private TransactionsRepository transactionsRepository;
    
    @RequestMapping("/listEmployee")
    public ModelAndView showListEmployee(){
        ModelAndView m = new ModelAndView("employee");
        m.addObject("listEmployee", employeesRepository.findAll());
        return m;
    }
    
    @RequestMapping("/loadAddEmployee")
    public ModelAndView loadAddEmployee(){
        ModelAndView m = new ModelAndView("addemployeeform");
        m.addObject("employee", new Employees());
        return m;
    }
    
    @RequestMapping(value = "/addEmployee", method = RequestMethod.POST)
    public ModelAndView addEmployee(@ModelAttribute("employee") Employees employee){
            ModelAndView m = new ModelAndView("home2");
        employeesRepository.save(employee);
        return m;
    }
    @RequestMapping(value = "/deleteEmployee")
    public String deleteEmployee(@RequestParam("id")Integer id){
        if(null != transactionsRepository.findTransactionSearch(id)){
            return "redirect:/listEmployee";
        }
        employeesRepository.delete(id);
        return "redirect:/listEmployee";
    }
    
    @RequestMapping("/loadEditEmployee")
    public ModelAndView loadEditEmployee(@RequestParam("id") Integer id) {
        ModelAndView m = new ModelAndView("editEmployee");
        m.addObject("employee", employeesRepository.findOne(id));
        return m;
    }
    
    @RequestMapping("/editEmployee")
    public ModelAndView editEmployee(@ModelAttribute("employee") Employees employee) {
        ModelAndView m = new ModelAndView("home2");
        employeesRepository.updateEmployee(employee.getName(), employee.getAddress(), employee.getLimit(), employee.getStatus(), employee.getNote(), employee.getId());
        return m;
    }
}
