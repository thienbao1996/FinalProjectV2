/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sample.finalproject.controller;

import com.sample.finalproject.entity.Accounts;
import com.sample.finalproject.repository.AccountsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author baolu
 */
@Controller
public class LoginController {
    @Autowired
    private AccountsRepository accountsRepository;
    
    @RequestMapping(value = "loginAction", method = RequestMethod.POST)
    public ModelAndView loginAction(@RequestParam("user") String user, @RequestParam("pass") String pass) {
        ModelAndView m;
        Accounts a = accountsRepository.checkLogin(user, pass);
        if( a == null ) {
            return new ModelAndView("fail");
        }
        if (a.getRole() == 1) {
            return new ModelAndView("home");
        } else {
            return new ModelAndView("home");
        }
    }
}
