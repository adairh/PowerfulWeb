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

    private static final String SURVEY_JSP = "/child/chap06_ex2/survey.jsp";
    private static final String PARAM_FIRST_NAME = "firstName";
    private static final String PARAM_LAST_NAME = "lastName";
    private static final String PARAM_EMAIL = "email";
    private static final String PARAM_HEARD_FROM = "heardFrom";
    private static final String PARAM_WANTS_UPDATES = "wantsUpdates";
    private static final String PARAM_CONTACT_VIA = "contactVia";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // get parameters from the request
        String firstName = request.getParameter(PARAM_FIRST_NAME);
        String lastName = request.getParameter(PARAM_LAST_NAME);
        String email = request.getParameter(PARAM_EMAIL);
        String heardFrom = request.getParameter(PARAM_HEARD_FROM);
        String wantsUpdates = request.getParameter(PARAM_WANTS_UPDATES);
        String contactVia = request.getParameter(PARAM_CONTACT_VIA);

        // process parameters
        heardFrom = (heardFrom == null) ? "NA" : heardFrom;
        wantsUpdates = (wantsUpdates == null || wantsUpdates.isEmpty()) ? "No" : "Yes";

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
        getServletContext().getRequestDispatcher(SURVEY_JSP).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}
