/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valensi.formbean;

import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

/**
 *
 * @author user
 */
public class RegisterFormbean {

    @Email(message = "email ga valid coy")
    private String email;
    @NotEmpty
    private String nama;
    @NotEmpty (message = "input usernamenya dong kalau enggak mana bisa daftar :'>")
    private String username;
    @NotEmpty
    @Size(min = 6, max = 10, message ="Passwordnya minimal 6 maximal 10!!!! ")
    private String password;
    @NotEmpty
    private String alamat;

    public RegisterFormbean() {
    }

    public RegisterFormbean(String email, String nama, String username, String password, String alamat) {
        this.email = email;
        this.nama = nama;
        this.username = username;
        this.password = password;
        this.alamat = alamat;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the nama
     */
    public String getNama() {
        return nama;
    }

    /**
     * @param nama the nama to set
     */
    public void setNama(String nama) {
        this.nama = nama;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the alamat
     */
    public String getAlamat() {
        return alamat;
    }

    /**
     * @param alamat the alamat to set
     */
    public void setAlamat(String alamat) {
        this.alamat = alamat;
    }
    
    
}
