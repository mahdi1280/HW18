package com.example.demo;

import java.io.*;
import java.time.LocalDate;
import java.util.ArrayList;

import com.example.demo.model.Person;
import com.example.demo.model.Ticket;
import com.example.demo.service.PersonService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/login")
public class HelloServlet extends HttpServlet {

    private PersonService personService=new PersonService();

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username=req.getParameter("username");
        String password = req.getParameter("password");
        Person byUsername = personService.findByUsername(username);
        if(byUsername==null){
            Person person=createPerson(username,password);
            personService.save(person);
            req.setAttribute("person",person);
        }else{
            req.setAttribute("person",byUsername);
        }
        req.setAttribute("tickets",new ArrayList<Ticket>());
        req.getRequestDispatcher("/home.jsp").forward(req, resp);
    }

    private Person createPerson(String username, String password) {
        return Person.builder()
                .username(username)
                .password(password)
                .build();
    }

    public void destroy() {
    }
}