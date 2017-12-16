/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valensi.controller;

import com.valensi.dao.ProductService;
import com.valensi.formbean.CartBean;
import com.valensi.model.Product;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author user
 */

@Controller
@RequestMapping("/order")
public class OrderController {
    
    @Autowired
    ProductService ps;
    
    @Autowired
    CartBean cart;
    int no = 1;
    
    @RequestMapping(value=" /add/{productId}")
    public String addCart(@PathVariable Integer productId, Model model, HttpSession session) {

        try {
            Product prod = ps.findById(productId);
            if (prod == null) {
                model.addAttribute("errMsg", "Belom ada barang yg dipilih");
                return "tblproduct";
            }
            cart.getCarts().put(no++, prod);
            int count = cart.getCarts().size();
            System.out.println("total: "+count);
            model.addAttribute("carts", count);
            session.setAttribute("cart", cart);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/product/all";
    }
}
