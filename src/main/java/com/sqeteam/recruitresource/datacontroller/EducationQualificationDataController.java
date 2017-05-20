/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sqeteam.recruitresource.datacontroller;

import com.sqeteam.recruitresource.model.EducationalQualifications;
import com.sqeteam.recruitresource.model.HibernateUtil;
import com.sqeteam.recruitresource.model.Persons;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Dinuzhka
 */
public class EducationQualificationDataController {

    public List<EducationalQualifications> getEducationQualifications(Persons persons) {
        List<EducationalQualifications> levels = new ArrayList<>();
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            String hql = "select a from EducationalQualifications as a join fetch a.persons as ab join fetch a.educationLevels as el where ab.idUser=:idUser";
            Query query = session.createQuery(hql);
            query.setParameter("idUser", persons.getIdUser());
            levels = (List<EducationalQualifications>) query.list();
            System.out.println("Levels="+levels.size());
        } catch (HibernateException e) {
            e.printStackTrace();
            throw e;
        } finally {
            session.close();
        }
        return levels;
    }
    
    public int addEducationalQualification(EducationalQualifications eq) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.save(eq);

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
        return eq.getIdEducationalQualifications();
    }
}
