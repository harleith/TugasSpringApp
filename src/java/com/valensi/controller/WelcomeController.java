/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valensi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value ="/welcome")
public class WelcomeController {
    
    @RequestMapping()
    public String myPage(Model model) {
        model.addAttribute("message", "TEST");
        return "welcome";
    }
    
           }
