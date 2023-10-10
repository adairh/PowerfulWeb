package me.sjihh.hihonweb.chap.eight.one.email;

import me.sjihh.hihonweb.chap.eight.one.business.User;
import me.sjihh.hihonweb.chap.eight.one.data.UserDB;
import me.sjihh.hihonweb.chap.eight.one.data.UserIO;

import java.io.*;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/emailList81")
public class EmailListServlet extends HttpServlet
{    
    @Override
    protected void doPost(HttpServletRequest request, 
                          HttpServletResponse response) 
                          throws ServletException, IOException {

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }

        // perform action and set URL to appropriate page
        String url = "/c8e1";
        if (action.equals("join")) {
            url = "/c8e1";    // the "join" page
        }
        else if (action.equals("add")) {                
            // get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");

            // store data in User object and save User object in database
            User user = new User(firstName, lastName, email);
            UserDB.insert(user);
            
            // set User object in request object and set URL
            request.setAttribute("user", user);
            url = "/child/chap08_ex1/thanks.jsp";   // the "thanks" page
        }
        
        // create the Date object and store it in the request
        Date currentDate = new Date();
        request.setAttribute("currentDate", currentDate);

        // create users list and store it in the session
        String path = getServletContext().getRealPath("/child/chap08_ex1/WEB-INF/EmailList.txt");
        ArrayList<User> users = UserIO.getUsers(path);
        HttpSession session = request.getSession();
        session.setAttribute("users", users);

        // forward request and response objects to specified URL
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