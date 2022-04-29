package com.example.demo.repository;

import com.example.demo.connecton.MySessionFactory;
import com.example.demo.model.Ticket;
import org.hibernate.Session;

import java.time.LocalDate;
import java.util.List;

public class TicketRepository {

    public List<Ticket> findBySourceAndDestAndDate(String source, String dest, LocalDate date) {
        Session session = MySessionFactory.openSession();
        return session.createQuery("select t from Ticket t where t.localDate=:date and t.dest=:dest and t.source=:source",Ticket.class)
                .setParameter("date",date)
                .setParameter("dest",dest)
                .setParameter("source",source)
                .getResultList();
    }
}
