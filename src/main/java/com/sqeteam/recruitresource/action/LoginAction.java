/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sqeteam.recruitresource.action;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author Deshika
 */
public class LoginAction extends ActionSupport {

    private String email;
    private String password;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String execute() throws Exception {
//        return super.execute(); //To change body of generated methods, choose Tools | Templates.

        if (this.email.equals("deshika")
                && this.password.equals("1234")) {
            return "success";
        } else {
            addActionError(getText("error.login"));
            return "error";
        }
    }

}
