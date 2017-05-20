/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sqeteam.recruitresource.datacontroller;

import com.sqeteam.recruitresource.model.HibernateUtil;
import com.sqeteam.recruitresource.model.Login;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Dinuzhka
 */
public class LoginDataController {

    public boolean isValidCredentials(String email, String password) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        boolean isValid = false;
        try {
            tx = session.beginTransaction();
            //String sql = "SELECT email FROM login WHERE email=:email AND password=password(:password)";
            String sql = "SELECT email FROM login WHERE email=:email AND password=:password";
            SQLQuery query = session.createSQLQuery(sql);
            query.setParameter("email", email);
            query.setParameter("password", password);
            query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);
            List data = query.list();
            isValid = !data.isEmpty();
            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
            throw e;
        } finally {
            session.close();
        }
        return isValid;
    }

    public Login GetLogin(String email) {
        Login login=null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            String hql = "FROM Login WHERE email=:email ";
            Query query = session.createQuery(hql);
            query.setParameter("email", email);
            login = (Login)query.uniqueResult();
        } catch (HibernateException e) {
            e.printStackTrace();
            throw e;
        } finally {
            session.close();
        }
        return login;

    }

    public int addLogin(Login login) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.save(login);

            tx.commit();
        } catch (HibernateException e) {
            if (tx != null) {
                tx.rollback();
            }
            throw e;
        } finally {
            session.close();
        }
        return login.getIdlogin();
    }

}
