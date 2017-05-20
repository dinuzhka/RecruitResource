/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sqeteam.recruitresource.search;

import com.sqeteam.recruitresource.model.HibernateUtil;
import com.sqeteam.recruitresource.model.Persons;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Dinuzhka
 */
public class TotalPersonSearch implements ISearch {

    @Override
    public List<Persons> executeSearch(List<Persons> persons) {
        return getPersons();
    }

    public List<Persons> getPersons() {
        List<Persons> persons = new ArrayList<>();
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            String hql = "FROM Persons as p WHERE p.type='user'";
            Query query = session.createQuery(hql);
            persons = (List<Persons>) query.list();
        } catch (HibernateException e) {
            e.printStackTrace();
            throw e;
        } finally {
            session.close();
        }
        return persons;

    }
}
