package com.example.demo.model;

import javax.persistence.Entity;

@Entity
public class Person extends BaseEntity{

    private String username;
    private String password;

    public Person(){}

    public Person(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public static Builder builder(){
        return new Builder();
    }

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

    public static class Builder{

        private String username;
        private String password;

        private Builder(){

        }

        public Builder username(String username){
            this.username=username;
            return this;
        }

        public Builder password(String password){
            this.password=password;
            return this;
        }

        public Person build(){
            return new Person(username,password);
        }
    }
}
