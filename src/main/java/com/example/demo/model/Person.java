package com.example.demo.model;

import javax.persistence.Entity;

@Entity
public class Person extends BaseEntity{

    private String username;
    private String password;

    public String getUsername() {
        return username;
    }

    public Person setUsername(String username) {
        this.username = username;
        return this;
    }

    public String getPassword() {
        return password;
    }

    public Person setPassword(String password) {
        this.password = password;
        return this;
    }
}
