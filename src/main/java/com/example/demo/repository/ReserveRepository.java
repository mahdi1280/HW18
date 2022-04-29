package com.example.demo.repository;

import com.example.demo.connecton.MySessionFactory;
import com.example.demo.model.Person;
import com.example.demo.model.Reserve;
import org.hibernate.Session;

import java.util.List;

public class ReserveRepository {

    public void save(Reserve reserve){
        Session session = MySessionFactory.openSession();
        session.beginTransaction();
        session.save(reserve);
        session.getTransaction().commit();
    }

    public List<Reserve> findByPerson(Person person) {
        Session session = MySessionFactory.openSession();
        return session.createQuery("select r from Reserve r where r.person=:person",Reserve.class)
                .setParameter("person",person)
                .getResultList();
    }

    public void delete(int reserveId) {
        Session session = MySessionFactory.openSession();
        Reserve reserve = session.find(Reserve.class, reserveId);
        session.beginTransaction();
        session.delete(reserve);
        session.getTransaction().commit();
    }
}
