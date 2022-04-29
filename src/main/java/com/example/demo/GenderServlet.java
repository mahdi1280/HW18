package com.example.demo;

import com.example.demo.model.Person;
import com.example.demo.model.Ticket;
import com.example.demo.service.PersonService;
import com.example.demo.service.TicketService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "GenderServlet", value = "/gender")
public class GenderServlet extends HttpServlet {

    private TicketService ticketService=new TicketService();
    private PersonService personService = new PersonService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int personId=Integer.parseInt(request.getParameter("personId"));
        int ticketId=Integer.parseInt(request.getParameter("ticketId"));
        Person person = personService.findById(personId);
        Ticket ticket = ticketService.findById(ticketId);
        request.setAttribute("person",person);
        request.setAttribute("ticket",ticket);
        request.getRequestDispatcher("/gender.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
