/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sqeteam.recruitresource.datacontroller;

import com.sqeteam.recruitresource.model.HibernateUtil;
import com.sqeteam.recruitresource.model.Login;
import com.sqeteam.recruitresource.model.Persons;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Dinuzhka
 */
public class PersonDataController {

    public int addPerson(Persons persons) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.save(persons);

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
        return persons.getIdUser();
    }
}
