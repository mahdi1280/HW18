package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

@Entity
public class Reserve extends BaseEntity{

    private Person person;
    private Ticket ticket;
    private String gender;

    public Reserve(Person person, Ticket ticket, String gender) {
        this.person = person;
        this.ticket = ticket;
        this.gender = gender;
    }

    public Reserve() {
    }

    public static Builder builder(){
        return new Builder();
    }

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

    public static class Builder {

        private Person person;
        private Ticket ticket;
        private String gender;

        private Builder(){}

        public Builder person(Person person){
            this.person=person;
            return this;
        }

        public Builder ticket(Ticket ticket){
            this.ticket=ticket;
            return this;
        }

        public Builder gender(String gender){
            this.gender=gender;
            return this;
        }

        public Reserve build(){
            return new Reserve(person,ticket,gender);
        }
    }
}
