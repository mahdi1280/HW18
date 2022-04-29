package com.example.demo.service;

import com.example.demo.model.Person;
import com.example.demo.model.Reserve;
import com.example.demo.repository.ReserveRepository;

import java.util.List;

public class ReserveService {

    private final ReserveRepository reserveRepository = new ReserveRepository();

    public void save(Reserve reserve){
        reserveRepository.save(reserve);
    }


    public List<Reserve> findByPerson(Person person) {
        return reserveRepository.findByPerson(person);
    }

    public void delete(int reserveId) {
        reserveRepository.delete(reserveId);
    }
}
