package com.example.demo.service;

import com.example.demo.model.Ticket;
import com.example.demo.repository.TicketRepository;

import java.time.LocalDate;
import java.util.List;

public class TicketService {

    private TicketRepository ticketRepository=new TicketRepository();

    public List<Ticket> findBySourceAndDestAndDate(String source, String dest, LocalDate date) {
        return ticketRepository.findBySourceAndDestAndDate(source,dest,date);
    }
}
