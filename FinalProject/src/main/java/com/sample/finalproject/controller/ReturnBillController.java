/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sample.finalproject.controller;

import com.sample.finalproject.entity.ReturnBill;
import com.sample.finalproject.entity.ReturnBillDetail;
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
public class ReturnBillController {
    @Autowired
    private ReturnBillRepository returnBillRepository;
    @Autowired
    private ReturnBillDetailRepository returnBillDetailRepository;
    
    @RequestMapping("/listReturnBill")
    public ModelAndView loadListReturnBill() {
        ModelAndView m = new ModelAndView("returnBills");
        List<ReturnBill> list = returnBillRepository.findAll();
        m.addObject("listReturnBill", list);
        return m;
    }
    
    @RequestMapping("/addReturnBillForm")
    public ModelAndView loadAddReturnBillForm() {
        ModelAndView m = new ModelAndView("addReturnBillForm");
        m.addObject("ReturnBill", new ReturnBill());
        return m;
    }
    
    @RequestMapping(value = "/addReturnBill", method = RequestMethod.POST)
    public ModelAndView addReturnBill(@ModelAttribute("ReturnBill") ReturnBill bill) {
        ModelAndView m = new ModelAndView("addItemRB");
        returnBillRepository.save(bill);
        List<ReturnBill> list = returnBillRepository.findAll();

        m.addObject("id", list.get(list.size() - 1).getId());
        return m;
    }
    
    @RequestMapping(value = "/Detail")
    public ModelAndView Detail(@RequestParam("id") int id, @RequestParam("proId") int proId, @RequestParam("proName") String proName, @RequestParam("quantity") int quantity) {
        ModelAndView m = new ModelAndView("addItemRB");
        returnBillDetailRepository.save(new ReturnBillDetail(proId, proName, quantity, returnBillRepository.findOne(id)));
        
        List<ReturnBill> list = returnBillRepository.findAll();
        m.addObject("id", list.get(list.size() - 1).getId());
        
        return m;
    }
    
}
