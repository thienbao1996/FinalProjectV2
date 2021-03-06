/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sample.finalproject.controller;


import com.sample.finalproject.entity.Inventory;
import com.sample.finalproject.repository.InventoryRepository;
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
public class InventoryController{
    @Autowired
    private InventoryRepository inventoryRepository;
    
    @RequestMapping("/listInventory")
    public ModelAndView showListInventory(){
        ModelAndView m = new ModelAndView("inventory");
        m.addObject("inventory", inventoryRepository.findAll());
        return m;
    }
    @RequestMapping("/loadAddInventory")
    public ModelAndView loadAddInventory(){
        ModelAndView m = new ModelAndView("addinventory");
        m.addObject("inventory", new Inventory());
        return m;
    }
    
    @RequestMapping("/addInventory")
    public ModelAndView addInventory(@ModelAttribute("inventory") Inventory inventory){
            ModelAndView m = new ModelAndView("home");
        inventoryRepository.save(inventory);
        return m;
    }
    
    
    @RequestMapping("/loadEditInventory")
    public ModelAndView loadEditInventory(@RequestParam("id") Integer id) {
        ModelAndView m = new ModelAndView("editInventory");
        m.addObject("inventory", inventoryRepository.findOne(id));
        return m;
    }
    
    @RequestMapping("/editInventory")
    public ModelAndView editMatch(@ModelAttribute("inventory") Inventory inventory) {
        ModelAndView m = new ModelAndView("home");
        inventoryRepository.updateInventory(inventory.getCreateDate(), inventory.getNote(), inventory.getProduct_id(), inventory.getUnit(), inventory.getAmount(), inventory.getId());
        return m;
    }
}
