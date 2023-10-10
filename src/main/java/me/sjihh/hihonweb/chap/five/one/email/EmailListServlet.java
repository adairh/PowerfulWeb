package me.sjihh.hihonweb.chap.five.one.email;

import me.sjihh.hihonweb.chap.five.one.business.User;
import me.sjihh.hihonweb.chap.five.one.data.UserDB;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/emailList01")
public class EmailListServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/c5e1";
        
        // get current action
        String action = request.getParameter("action");
        
        // print action value to console AND log file
        System.out.println("EmailListServlet action: " + action);
        log("action=" + action);
        
        // set default action
        if (action == null) {
            action = "join";  // default action
        }

        // perform action and set URL to appropriate page
        if (action.equals("join")) {
            url = "/c5e1";    // the "join" page
        } 
        else if (action.equals("add")) {
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");
            
            // store data in User object
            User user = new User(firstName, lastName, email);

            // validate the parameters
            String message;
            if (firstName == null || lastName == null || email == null ||
                firstName.isEmpty() || lastName.isEmpty() || email.isEmpty()) {
                message = "Please fill out all three text boxes.";
                url = "/c5e1";
            } 
            else {
                message = "";
                url = "/child/chap05_ex1/thanks.jsp";
                UserDB.insert(user);
            }
            request.setAttribute("user", user);
            request.setAttribute("message", message);
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}