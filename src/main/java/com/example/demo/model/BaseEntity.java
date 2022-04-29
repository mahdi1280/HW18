package com.example.demo.model;

import javax.persistence.*;

@MappedSuperclass
public class BaseEntity {


    private int id;
    private int version;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getId() {
        return id;
    }

    public BaseEntity setId(int id) {
        this.id = id;
        return this;
    }

    @Version
    public int getVersion() {
        return version;
    }

    public BaseEntity setVersion(int version) {
        this.version = version;
        return this;
    }
}
