package com.example.demo.repository;

import com.example.demo.connecton.MySessionFactory;
import com.example.demo.model.Person;
import org.hibernate.Session;

import java.util.List;

public class PersonRepository {

    public void save(Person person){
        Session session = MySessionFactory.openSession();
        session.beginTransaction();
        session.save(person);
        session.getTransaction().commit();
    }

    public Person findByUsername(String username) {
        Session session = MySessionFactory.openSession();
        List<Person> list = session.createQuery("select p from Person p where p.username=:username",Person.class)
                .setParameter("username", username)
                .getResultList();
        if (list.size()<=0)
            return null;
        return list.get(0);
    }
}
