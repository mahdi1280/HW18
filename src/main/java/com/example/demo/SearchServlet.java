package com.example.demo;

import com.example.demo.model.Person;
import com.example.demo.model.Ticket;
import com.example.demo.repository.TicketRepository;
import com.example.demo.service.PersonService;
import com.example.demo.service.TicketService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SearchServlet", value = "/search")
public class SearchServlet extends HttpServlet {

    private TicketService ticketService=new TicketService();
    private PersonService personService=new PersonService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String source=request.getParameter("source");
        String dest=request.getParameter("dest");
        LocalDate date=LocalDate.parse(request.getParameter("date"));
        String personId=request.getParameter("personId");
        List<Ticket> bySourceAndDestAndDate = ticketService.findBySourceAndDestAndDate(source, dest, date);
        Person person=personService.findById(Integer.parseInt(personId));
        request.setAttribute("person",person);
        request.setAttribute("tickets",bySourceAndDestAndDate);
        request.getRequestDispatcher("/home.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
