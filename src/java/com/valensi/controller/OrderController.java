/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valensi.controller;

import com.valensi.dao.ProductService;
import com.valensi.formbean.CartBean;
import com.valensi.model.Product;
import java.util.Map;
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
    int key = 1;

    @RequestMapping(value = "/add/{productID}")
    public String addCart(@PathVariable Integer productID, Model model, HttpSession session) {

        try {
            Product prod = ps.findById(productID);
            totalHargaDalamChart = totalHargaDalamChart + prod.getHarga();
            cart.getCarts().put(key++, prod);
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
        Map<Integer, Product> cartz = cart.getCarts();
        double total = 0.0;
        for (Map.Entry<Integer, Product> entry : cartz.entrySet()) {
            Product value = entry.getValue();
            total = total + value.getHarga();
        }
        totalHargaDalamChart = total;
        model.addAttribute("cartok", total);
        return "cartok";
    }

    @RequestMapping(value = "/remove/{productID}/{value}")
    public String removeCart(@PathVariable Integer productID, @PathVariable Integer value, HttpSession totalHarga, Model model) {

        try {
            Product prod = ps.findById(productID);
            if (prod == null) {
                model.addAttribute("errMsg", "Belom ada barang yg dipilih");
                return "product";
            }
            Double tot;
            totalHargaDalamChart = totalHargaDalamChart - prod.getHarga();
            cart.getCarts().remove(value, prod);
//            cart.getCarts().remove(ps);
            int count = cart.getCarts().size();
//            System.out.println("tot: "+count);
            model.addAttribute("cartok", totalHargaDalamChart);

//            session.setAttribute("cart", cart);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "cartok";
    }
}
