package me.sjihh.hihonweb.chap.six.one.email;

import me.sjihh.hihonweb.chap.six.one.business.User;
import me.sjihh.hihonweb.chap.six.one.data.UserDB;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/emailList61")
public class EmailListServlet extends HttpServlet {

    private static final String DEFAULT_URL = "/c6e1";
    private static final String THANKS_URL = "/child/chap06_ex1/thanks.jsp";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = DEFAULT_URL;

        // initialize the current year that's used in the copyright notice
        int currentYear = Calendar.getInstance().get(Calendar.YEAR);
        request.setAttribute("currentYear", currentYear);

        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }

        // perform action and set URL to appropriate page
        if ("join".equals(action)) {
            url = DEFAULT_URL;    // the "join" page
        } else if ("add".equals(action)) {
            handleAddAction(request);
            // No need to set URL here, it's already set in handleAddAction
        }

        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    private void handleAddAction(HttpServletRequest request) {
        // get parameters from the request
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");

        // store data in User object
        User user = new User(firstName, lastName, email);

        // validate the parameters
        String message = validateParameters(firstName, lastName, email);
        String url;

        if (message != null) {
            url = DEFAULT_URL;
        } else {
            url = THANKS_URL;
            UserDB.insert(user);
        }

        request.setAttribute("user", user);
        request.setAttribute("message", message);
        request.setAttribute("url", url);
    }

    private String validateParameters(String firstName, String lastName, String email) {
        if (firstName == null || lastName == null || email == null ||
                firstName.isEmpty() || lastName.isEmpty() || email.isEmpty()) {
            return "Please fill out all three text boxes.";
        }
        return null;
    }
}
