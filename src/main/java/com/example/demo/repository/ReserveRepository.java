package com.example.demo.repository;

import com.example.demo.connecton.MySessionFactory;
import com.example.demo.model.Reserve;
import org.hibernate.Session;

public class ReserveRepository {

    public void save(Reserve reserve){
        Session session = MySessionFactory.openSession();
        session.beginTransaction();
        session.save(reserve);
        session.getTransaction().commit();
    }
}
