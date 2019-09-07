/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sample.finalproject.controller;

import com.sample.finalproject.entity.OrderDetail;
import com.sample.finalproject.entity.Orders;
import com.sample.finalproject.entity.Products;
import com.sample.finalproject.entity.ReturnBill;
import com.sample.finalproject.entity.ReturnBillDetail;
import com.sample.finalproject.repository.OrderDetailRepository;
import com.sample.finalproject.repository.OrdersRepository;
import com.sample.finalproject.repository.ProductsRepository;
import com.sample.finalproject.repository.ReturnBillDetailRepository;
import com.sample.finalproject.repository.ReturnBillRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author baolu
 */
@Controller
public class MainController {
    @Autowired
    private OrdersRepository ordersRepository;
    @Autowired
    private OrderDetailRepository orderDetailRepository;
    @Autowired
    private ProductsRepository productsRepository;
    
    
    @RequestMapping("/")
    public String test() {
<<<<<<< HEAD
<<<<<<< HEAD
        return "home2";
=======
=======
>>>>>>> 2ba38e50ef5dab44251a2259c371b7aa15f8e09a
        return "login";
    }
    
    @RequestMapping("home")
<<<<<<< HEAD
    public String test2() {
        return "home";
>>>>>>> bcd5506eea222d38e074e406cae16cab05c0559e
=======
    public String test2() {       
        return "home";       
>>>>>>> 2ba38e50ef5dab44251a2259c371b7aa15f8e09a
    }
    
    @RequestMapping("listOrder")
    public ModelAndView listOrder() {
        ModelAndView m = new ModelAndView("orders");
        List<Orders> list = ordersRepository.findAll();
        m.addObject("listOrder", list);
        return m;
    }
    
    @RequestMapping("addOrderForm")
    public ModelAndView addOrderForm() {
        ModelAndView m = new ModelAndView("addOrder");
        m.addObject("order", new Orders());
        return m;
    }
    
    @RequestMapping(value = "addOrder", method = RequestMethod.POST)
    public ModelAndView addOrder(@ModelAttribute("order") Orders order) {
        ModelAndView m = new ModelAndView("addItem");
        ordersRepository.save(order);
        List<Orders> list = ordersRepository.findAll();
        int id = list.get(list.size() - 1).getId();
        m.addObject("item", new OrderDetail());
        m.addObject("orderId", id);
        m.addObject("products", productsRepository.findAll());
        return m;
    }
    
    @RequestMapping(value = "addOrderDetail", method = RequestMethod.POST)
    public ModelAndView addOrderDatail(@RequestParam("id") int id, @RequestParam("product") int product, @RequestParam("quantity") int quantity) {
        ModelAndView m = new ModelAndView("addItem");
        Orders order = ordersRepository.findOne(id);
        Products pro = productsRepository.findOne(product);
        
        // add order detail
        orderDetailRepository.save(new OrderDetail(quantity, order, pro));
        
        // update order
        float discount = pro.getDiscount() /100 * pro.getPrice() * quantity;
        float tax = pro.getPrice() * 0.1f * quantity;
        float total = order.getTotal() + pro.getPrice() * quantity + tax - discount;
        ordersRepository.updateOrder(discount, tax, total, id);
        
        // page attribute
        m.addObject("item", new OrderDetail());
        m.addObject("orderId", id);
        m.addObject("products", productsRepository.findAll());
        
        return m;
    }
    
    
}
