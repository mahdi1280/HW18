package com.example.demo.service;

import com.example.demo.model.Reserve;
import com.example.demo.repository.ReserveRepository;

public class ReserveService {

    private final ReserveRepository reserveRepository = new ReserveRepository();

    public void save(Reserve reserve){
        reserveRepository.save(reserve);
    }


}
