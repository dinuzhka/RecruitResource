/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sqeteam.recruitresource.datacontroller;

import com.sqeteam.recruitresource.model.HibernateUtil;
import com.sqeteam.recruitresource.model.JobTitles;
import com.sqeteam.recruitresource.model.Persons;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.hibernate.HibernateException;
import org.hibernate.Query;
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
    
    public Persons getPerson(String email) {
        Persons persons=null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            String hql = "FROM Persons as p "
                    + "WHERE p.login.email=:email ";
            Query query = session.createQuery(hql);
            query.setParameter("email", email);
            persons = (Persons)query.uniqueResult();
        } catch (HibernateException e) {
            e.printStackTrace();
            throw e;
        } finally {
            session.close();
        }
        return persons;

    }
    
    public List<JobTitles> getJobTitleses(Persons persons) {
        List<JobTitles> levels = new ArrayList<>();
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            String hql = "select a. from Persons as a join fetch a.jobTitleses as ab where a.idUser=:idUser";
            Query query = session.createQuery(hql);
            query.setParameter("idUser", persons.getIdUser());
            Persons p=(Persons)query.uniqueResult();
            Set<JobTitles> ts=p.getJobTitleses();
            Iterator<JobTitles> it=ts.iterator();
            while(it.hasNext()){
                levels.add(it.next());
            }
        } catch (Exception e) {
            return levels;
        } finally {
            session.close();
        }
        return levels;
    }
    
    public void updatePerson(Persons persons) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.update(persons);

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
    }
    
    
    
}
