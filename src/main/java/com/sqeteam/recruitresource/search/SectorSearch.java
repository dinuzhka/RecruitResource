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
public class SectorSearch implements ISearch {
    private int idJobSector;
    public SectorSearch(int idJobSector){
        this.idJobSector=idJobSector;
    }
    
    @Override
    public List<Persons> executeSearch(List<Persons> persons) {
        List<Persons> result=getPersons();
        System.out.println("persons=>"+persons.size());
        System.out.println("Result=>"+result.size());
        System.out.println("idJobSector=>"+idJobSector);
        result=ListUtil.intersection(persons, result);
        System.out.println("Final Result=>"+result.size());
        return result;
    }

    public List<Persons> getPersons() {
        List<Persons> persons = new ArrayList<>();
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            String hql = "FROM Persons as p join fetch p.jobTitleses as jt  WHERE p.type='user' AND jt.sectors=:idSectors";
            Query query = session.createQuery(hql);
            query.setParameter("idSectors", idJobSector);
            persons = (List<Persons>) query.list();
            
        } catch (HibernateException e) {
            e.printStackTrace();
        } finally {
            session.close();
        }
        return persons;

    }
}
