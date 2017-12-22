/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valensi.controller;

import com.valensi.dao.UserService;
import com.valensi.diggestEnkripsi.PasswordDiggest;
import com.valensi.formbean.RegisterFormbean;
import com.valensi.model.Customer;
import javax.validation.Valid;
import javax.xml.ws.BindingType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author user
 */
    @Controller
@RequestMapping("/register")
public class RegistrationController {
    
    @Autowired
    UserService us;
   
    @RequestMapping() 
    public String registerForm(Model model) {
        RegisterFormbean registerBean = new RegisterFormbean();
        //registerBean.setLastName("Smith");
        model.addAttribute("registerBean", registerBean);
        return "registration";
    }
    
    @RequestMapping(value="/save") 
    public String saveRegistration(@Valid @ModelAttribute("registerBean") RegisterFormbean registerBean, BindingResult result ,Model model) {
        
        if (result.hasErrors()) {
            return "registration";
        }
        
        Customer cust = new Customer();
        String encryptedPassword = 
                PasswordDiggest.createEncryptedPassword(registerBean.getPassword());
        cust.setEmail(registerBean.getEmail());
        cust.setNama(registerBean.getNama());
        cust.setUsername(registerBean.getUsername());
        cust.setPassword(encryptedPassword);
        cust.setAlamat(registerBean.getAlamat());
        
        us.saveUser(cust);
        
        model.addAttribute("data", registerBean);
        return "successregistration";
    }
}
