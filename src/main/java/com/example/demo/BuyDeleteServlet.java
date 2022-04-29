package com.example.demo;

import com.example.demo.model.Person;
import com.example.demo.model.Ticket;
import com.example.demo.service.PersonService;
import com.example.demo.service.ReserveService;
import com.example.demo.service.TicketService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "BuyDeleteServlet", value = "/buyDelete")
public class BuyDeleteServlet extends HttpServlet {

    private ReserveService reserveService=new ReserveService();
    private PersonService personService = new PersonService();


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int reserveId=Integer.parseInt(req.getParameter("reserveId"));
        int personId=Integer.parseInt(req.getParameter("personId"));
        reserveService.delete(reserveId);
        Person byId = personService.findById(personId);
        req.setAttribute("tickets",new ArrayList<Ticket>());
        req.setAttribute("person",byId);
        req.getRequestDispatcher("/home.jsp").forward(req, resp);
    }
}
