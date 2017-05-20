/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sqeteam.recruitresource.datacontroller;

import com.sqeteam.recruitresource.model.EducationalQualifications;
import com.sqeteam.recruitresource.model.HibernateUtil;
import com.sqeteam.recruitresource.model.Persons;
import com.sqeteam.recruitresource.model.ProfessionalQualifications;
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
public class ProfessionalQualificationDataController {

    public List<ProfessionalQualifications> getProfessionalQualifications(Persons persons) {
        List<ProfessionalQualifications> levels = new ArrayList<>();
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            String hql = "select a from ProfessionalQualifications as a join fetch a.persons as ab join fetch a.sectors as el where ab.idUser=:idUser";
            Query query = session.createQuery(hql);
            query.setParameter("idUser", persons.getIdUser());
            levels = (List<ProfessionalQualifications>) query.list();
        } catch (HibernateException e) {
            e.printStackTrace();
            throw e;
        } finally {
            session.close();
        }
        return levels;
    }

    public int addProfessionalQualification(ProfessionalQualifications pq) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;
        try {
            tx = session.beginTransaction();
            session.save(pq);

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
        return pq.getIdProfessionalQualifications();
    }
}
