package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

@Entity
public class Reserve extends BaseEntity{

    private Person person;
    private Ticket ticket;
    private String gender;

    @ManyToOne
    public Person getPerson() {
        return person;
    }

    public Reserve setPerson(Person person) {
        this.person = person;
        return this;
    }

    @ManyToOne
    public Ticket getTicket() {
        return ticket;
    }

    public Reserve setTicket(Ticket ticket) {
        this.ticket = ticket;
        return this;
    }

    public String getGender() {
        return gender;
    }

    public Reserve setGender(String gender) {
        this.gender = gender;
        return this;
    }
}
