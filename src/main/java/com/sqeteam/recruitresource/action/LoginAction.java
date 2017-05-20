/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sqeteam.recruitresource.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sqeteam.recruitresource.datacontroller.LoginDataController;
import com.sqeteam.recruitresource.datacontroller.PersonDataController;
import com.sqeteam.recruitresource.model.Login;

/**
 *
 * @author Dinuzhka
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
        return super.execute(); //To change body of generated methods, choose Tools | Templates.
    }

    public String login() {
        LoginDataController ldc = new LoginDataController();

        if (ldc.isValidCredentials(getEmail(), getPassword())) {
            Login login = ldc.GetLogin(getEmail());
            ActionContext.getContext().getSession().put("logged_user", login);

            PersonDataController pdc = new PersonDataController();
            ActionContext.getContext().getSession().put("logged_person", pdc.getPerson(login.getEmail()));

            return "success";
        }
        addActionError("Invalid credentials. Please check again and retry");
        return "fail";
    }

    public String goLogin() {
        return "success";
    }

}
