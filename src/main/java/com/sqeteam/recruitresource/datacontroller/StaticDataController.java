/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sqeteam.recruitresource.datacontroller;

import com.sqeteam.recruitresource.model.EducationLevels;
import com.sqeteam.recruitresource.model.EmploymentLevels;
import com.sqeteam.recruitresource.model.HibernateUtil;
import com.sqeteam.recruitresource.model.JobTitles;
import com.sqeteam.recruitresource.model.Sectors;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author Dinuzhka
 */
public class StaticDataController {

    public List<Sectors> getSectors() {
        List<Sectors> levels = new ArrayList<>();
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            String hql = "FROM Sectors";
            Query query = session.createQuery(hql);
            levels = (List<Sectors>) query.list();
        } catch (HibernateException e) {
            e.printStackTrace();
            throw e;
        } finally {
            session.close();
        }
        return levels;
    }
    
    public List<EducationLevels> getEducationLevels() {
        List<EducationLevels> levels = new ArrayList<>();
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            String hql = "FROM EducationLevels";
            Query query = session.createQuery(hql);
            levels = (List<EducationLevels>) query.list();
        } catch (HibernateException e) {
            e.printStackTrace();
            throw e;
        } finally {
            session.close();
        }
        return levels;
    }
    
    public List<JobTitles> getJobTitles() {
        List<JobTitles> levels = new ArrayList<>();
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            String hql = "FROM JobTitles";
            Query query = session.createQuery(hql);
            levels = (List<JobTitles>) query.list();
        } catch (HibernateException e) {
            e.printStackTrace();
            throw e;
        } finally {
            session.close();
        }
        return levels;
    }
    
    public List<EmploymentLevels> getEmploymentLevels() {
        List<EmploymentLevels> levels = new ArrayList<>();
        Session session = HibernateUtil.getSessionFactory().openSession();
        try {
            String hql = "FROM EmploymentLevels";
            Query query = session.createQuery(hql);
            levels = (List<EmploymentLevels>) query.list();
        } catch (HibernateException e) {
            e.printStackTrace();
            throw e;
        } finally {
            session.close();
        }
        return levels;
    }
}
