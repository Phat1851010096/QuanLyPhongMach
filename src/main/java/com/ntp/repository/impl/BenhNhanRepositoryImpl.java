/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp.repository.impl;

import com.ntp.pojos.BenhNhan;
import com.ntp.pojos.Thuoc;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.ntp.repository.BenhNhanRepository;

/**
 *
 * @author Phat Nguyen
 */
@Repository
@Transactional
public class BenhNhanRepositoryImpl implements BenhNhanRepository{
    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public boolean addBenhNhan(BenhNhan benhnhan) {
        Session s = sessionFactory.getObject().getCurrentSession();
        try {
            s.save(benhnhan);
            return true;
        } catch (HibernateException ex) {
            System.err.println(ex.getMessage());
        }
        return false;
    }


    @Override
    public BenhNhan getBenhNhanById(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        return session.get(BenhNhan.class, id);
    }
}
