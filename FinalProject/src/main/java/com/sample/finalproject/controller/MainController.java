/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sample.finalproject.controller;

import com.sample.finalproject.entity.Orders;
import com.sample.finalproject.repository.OrdersRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author baolu
 */
@Controller
public class MainController {
    @Autowired
    private OrdersRepository ordersRepository;
    
    @RequestMapping("/")
    public String test() {
        return "home";
    }
    
    @RequestMapping("test")
    public String test2() {
        return "test";
    }
    
    @RequestMapping("listOrder")
    public ModelAndView listOrder() {
        ModelAndView m = new ModelAndView("orders");
        List<Orders> list = ordersRepository.findAll();
        m.addObject("listOrder", list);
        return m;
    }
}
