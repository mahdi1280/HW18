package com.example.demo.model;

import javax.persistence.Entity;
import java.time.LocalDate;

@Entity
public class Ticket extends BaseEntity{

    private LocalDate localDate;
    private String source;
    private String dest;

    public LocalDate getLocalDate() {
        return localDate;
    }

    public Ticket setLocalDate(LocalDate localDate) {
        this.localDate = localDate;
        return this;
    }

    public String getSource() {
        return source;
    }

    public Ticket setSource(String source) {
        this.source = source;
        return this;
    }

    public String getDest() {
        return dest;
    }

    public Ticket setDest(String dest) {
        this.dest = dest;
        return this;
    }
}
