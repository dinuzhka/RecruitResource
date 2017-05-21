/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sqeteam.recruitresource.search;

import com.sqeteam.recruitresource.model.HibernateUtil;
import com.sqeteam.recruitresource.model.Persons;
import com.sqeteam.recruitresource.util.ListUtil;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Dinuzhka
 */
public class TitleSearch implements ISearch {

    private int[] titleIds;

    public TitleSearch(int[] titleIds) {
        this.titleIds = titleIds;
    }

    @Override
    public List<Persons> executeSearch(List<Persons> persons) {
        List<Persons> result = persons;

        if (titleIds != null && titleIds.length > 0) {
            List<Persons> innerResults = new ArrayList<>();
            for (int title : titleIds) {
                List<Persons> atom = getPersons(title);
                innerResults.addAll(atom);
            }
            result = ListUtil.intersection(persons, innerResults);
            result = ListUtil.distinct(result);
        } else {
            result = persons;
        }
        return result;
    }

    public List<Persons> getPersons(int title) {
        List<Persons> persons = new ArrayList<>();
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            String hql = "FROM Persons as p join fetch p.jobTitleses as jt  WHERE p.type='user' AND jt.idJobTitles=:idJobTitles";
            Query query = session.createQuery(hql);
            query.setParameter("idJobTitles", title);
            persons = (List<Persons>) query.list();

        } catch (HibernateException e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
        return persons;
    }
}
