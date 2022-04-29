package com.example.demo.service;

import com.example.demo.model.Person;
import com.example.demo.repository.PersonRepository;

public class PersonService {

    private final PersonRepository personRepository;

    public PersonService(){
        this.personRepository=new PersonRepository();
    }

    public void save(Person person){
        personRepository.save(person);
    }

    public Person findByUsername(String username){
        return personRepository.findByUsername(username);
    }

    public Person findById(int personId) {
        return personRepository.findById(personId);
    }
}
