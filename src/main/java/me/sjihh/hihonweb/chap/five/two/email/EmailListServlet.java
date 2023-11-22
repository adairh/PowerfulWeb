package me.sjihh.hihonweb.chap.five.two.email;

import me.sjihh.hihonweb.chap.five.two.business.User;
import me.sjihh.hihonweb.chap.five.two.data.UserDB;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/emailList01")
public class EmailListServlet extends HttpServlet {

    private static final String DEFAULT_URL = "/c5e1";
    private static final String JOIN_ACTION = "join";
    private static final String ADD_ACTION = "add";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        logAction(action);

        String url = determineUrl(action);
        handleAction(action, request, url);

        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    private void logAction(String action) {
        System.out.println("EmailListServlet action: " + action);
        log("action=" + action);
    }

    private String determineUrl(String action) {
        return action.equals(JOIN_ACTION) ? DEFAULT_URL : "/child/chap05_ex1/thanks.jsp";
    }

    private void handleAction(String action, HttpServletRequest request, String url) {
        if (action.equals(ADD_ACTION)) {
            handleAddAction(request, url);
        }
    }

    private void handleAddAction(HttpServletRequest request, String url) {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");

        User user = new User(firstName, lastName, email);
        String message = validateInput(firstName, lastName, email);

        if (!message.isEmpty()) {
            url = DEFAULT_URL;
        } else {
            UserDB.insert(user);
        }

        request.setAttribute("user", user);
        request.setAttribute("message", message);
    }

    private String validateInput(String firstName, String lastName, String email) {
        if (firstName == null || lastName == null || email == null ||
                firstName.isEmpty() || lastName.isEmpty() || email.isEmpty()) {
            return "Please fill out all three text boxes.";
        }
        return "";
    }
}
