package com.example.demo;

import com.example.demo.model.Person;
import com.example.demo.model.Reserve;
import com.example.demo.model.Ticket;
import com.example.demo.service.PersonService;
import com.example.demo.service.ReserveService;
import com.example.demo.service.TicketService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "BuyServlet", value = "/buy")
public class BuyServlet extends HttpServlet {

    private ReserveService reserveService=new ReserveService();
    private TicketService ticketService=new TicketService();
    private PersonService personService = new PersonService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int personId=Integer.parseInt(request.getParameter("personId"));
        Person person=personService.findById(personId);
        List<Reserve> byPerson = reserveService.findByPerson(person);
        request.setAttribute("reserves",byPerson);
        request.getRequestDispatcher("/listBuy.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String gender = request.getParameter("gender");
        int ticketId= Integer.parseInt(request.getParameter("ticketId"));
        int personId=Integer.parseInt(request.getParameter("personId"));
        Ticket ticket=ticketService.findById(ticketId);
        Person person=personService.findById(personId);
        Reserve reserve=createReserve(gender,ticket,person);
        reserveService.save(reserve);
        request.setAttribute("reserve",reserve);
        request.getRequestDispatcher("/buy.jsp").forward(request, response);
    }

    private Reserve createReserve(String gender, Ticket ticket, Person person) {
        return Reserve.builder()
                .person(person)
                .gender(gender)
                .ticket(ticket)
                .build();
    }
}
