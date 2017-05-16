/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sqeteam.recruitresource.datacontroller;

import com.sqeteam.recruitresource.model.HibernateUtil;
import com.sqeteam.recruitresource.model.Sectors;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Dinuzhka
 */
public class SectorsDataController {

    public SectorsDataController() {

    }

    public Integer addSector(Sectors sectors) {
        Session session = HibernateUtil.getSessionFactory().openSession();

        Transaction tr = null;

        Integer sectorId = null;
        try {
            tr = session.beginTransaction();
            sectorId = (Integer) session.save(sectors);
            tr.commit();
        } catch (HibernateException e) {
            if (tr != null) {
                tr.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
            HibernateUtil.shutdown();
        }
        return sectorId;
    }
}
