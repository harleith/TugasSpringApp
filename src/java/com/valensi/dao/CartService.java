/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valensi.dao;

import com.valensi.model.Product;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author user
 */
public class CartService {
    
    private double totalHarga;
    private Map<Integer, Product> cartItems = new HashMap<>();

    /**
     * @return the totalHarga
     */
    public double getTotalHarga() {
        return totalHarga;
    }

    /**
     * @param totalHarga the totalHarga to set
     */
    public void setTotalHarga(double totalHarga) {
        this.totalHarga = totalHarga;
    }

    /**
     * @return the cartItems
     */
    public Map<Integer, Product> getCartItems() {
        return cartItems;
    }

    /**
     * @param cartItems the cartItems to set
     */
    public void setCartItems(Map<Integer, Product> cartItems) {
        this.cartItems = cartItems;
    }
    
    
    
}
