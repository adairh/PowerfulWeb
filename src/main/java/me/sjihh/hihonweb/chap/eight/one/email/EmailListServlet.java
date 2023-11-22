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
public class EmailListServlet extends HttpServlet {

    private static final String JOIN_ACTION = "join";
    private static final String ADD_ACTION = "add";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        if (action == null) {
            action = JOIN_ACTION;
        }

        String url = "/c8e1";

        if (action.equals(JOIN_ACTION)) {
            // No need to change the URL for the "join" action.
        } else if (action.equals(ADD_ACTION)) {
            handleAddAction(request);
            url = "/child/chap08_ex1/thanks.jsp";
        }

        setCurrentDateAttribute(request);
        setUsersListAttribute(request);

        // Forward request and response objects to specified URL
        request.getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    private void handleAddAction(HttpServletRequest request) {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");

        User user = new User(firstName, lastName, email);
        UserDB.insert(user);

        request.setAttribute("user", user);
    }

    private void setCurrentDateAttribute(HttpServletRequest request) {
        Date currentDate = new Date();
        request.setAttribute("currentDate", currentDate);
    }

    private void setUsersListAttribute(HttpServletRequest request) throws IOException {
        String path = getServletContext().getRealPath("/child/chap08_ex1/WEB-INF/EmailList.txt");
        try {
            ArrayList<User> users = UserIO.getUsers(path);
            HttpSession session = request.getSession();
            session.setAttribute("users", users);
        } catch (IOException e) {
            // Handle IOException, log, or rethrow based on your application's requirements
            throw e;
        }
    }
}
