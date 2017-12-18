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
@RequestMapping("/cart")
public class OrderController {

    @Autowired
    ProductService ps;

    CartBean cart = new CartBean();
    double totalHargaDalamChart;
    int no = 1;

    @RequestMapping(value = "/add/{productID}")
    public String addCart(@PathVariable Integer productID, Model model, HttpSession session) {

        try {
            Product prod = ps.findById(productID);
            totalHargaDalamChart = totalHargaDalamChart + prod.getHarga();
            cart.getCarts().put(no++, prod);
            int count = cart.getCarts().size();
            System.out.println("total: " + count);
            model.addAttribute("carts", count);
            session.setAttribute("cart", cart);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/product/all";
//        return "product";
    }

    @RequestMapping(value = "/show")
    public String showCart(Model model, HttpSession session) {
        return "cartok";
    }

    @RequestMapping(value = "/{productID/{value}")
    public String removeCart(@PathVariable Integer productID, @PathVariable Integer value, Model model, HttpSession session) {

        try {
            Product prod = ps.findById(productID);
            if (prod == null) {
                model.addAttribute("errMsg", "Belon ada yangg di pilih");
                return "product";
            }
            totalHargaDalamChart = totalHargaDalamChart - prod.getHarga();
            cart.getCarts().remove(no, prod);
//            cart.getCarts().remove(ps);
            int count = cart.getCarts().size();
//            System.out.println("total: "+ count);
            session.setAttribute("total", totalHargaDalamChart);
            model.addAttribute("carts", count);
            session.setAttribute("cartsess", cart);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "cartok";
    }
}
