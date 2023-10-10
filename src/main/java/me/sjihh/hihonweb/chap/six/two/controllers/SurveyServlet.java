package me.sjihh.hihonweb.chap.six.two.controllers;

import me.sjihh.hihonweb.chap.six.two.business.User;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/survey62")
public class SurveyServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        
        // get parameters from the request
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String heardFrom = request.getParameter("heardFrom");
        String wantsUpdates = request.getParameter("wantsUpdates");
        String contactVia = request.getParameter("contactVia");
        
        // process paramters
        if (heardFrom == null) {
            heardFrom = "NA";
        }
        if (wantsUpdates == null) {
            wantsUpdates = "No";
        }
        else {
            wantsUpdates = "Yes";
        }
        
        // store data in User object
        User user = new User();
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setEmail(email);        
        user.setHeardFrom(heardFrom);        
        user.setWantsUpdates(wantsUpdates);
        user.setContactVia(contactVia);

        // store User object in request
        request.setAttribute("user", user);

        // forward request to JSP
        String url = "/child/chap06_ex2/survey.jsp";
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