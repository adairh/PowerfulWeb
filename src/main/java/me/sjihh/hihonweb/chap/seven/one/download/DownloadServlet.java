package me.sjihh.hihonweb.chap.seven.one.download;

import me.sjihh.hihonweb.chap.nine.one.business.User;
import me.sjihh.hihonweb.chap.nine.one.data.UserIO;
import me.sjihh.hihonweb.chap.nine.one.util.CookieUtil;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/download01")
public class DownloadServlet extends HttpServlet {

    private static final String DEFAULT_URL = "/c7e1";
    private static final String REGISTER_URL = "/child/chap07_ex1/register.jsp";
    private static final String DELETE_COOKIES_URL = "/child/chap07_ex1/delete_cookies.jsp";

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        String action = request.getParameter("action");
        String url = determineUrl(action, request, response);
        forwardRequest(request, response, url);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        String action = request.getParameter("action");
        String url = DEFAULT_URL;

        if ("registerUser".equals(action)) {
            url = registerUser(request, response);
        }

        forwardRequest(request, response, url);
    }

    private String determineUrl(String action, HttpServletRequest request, HttpServletResponse response) {
        switch (action) {
            case "viewAlbums":
                return DEFAULT_URL;
            case "checkUser":
                return checkUser(request, response);
            case "viewCookies":
                return "/child/chap07_ex1/view_cookies.jsp";
            case "deleteCookies":
                return deleteCookies(request, response);
            default:
                return DEFAULT_URL;
        }
    }

    private void forwardRequest(HttpServletRequest request, HttpServletResponse response, String url)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    private String checkUser(HttpServletRequest request, HttpServletResponse response) {
        String productCode = request.getParameter("productCode");
        HttpSession session = request.getSession();
        session.setAttribute("productCode", productCode);
        me.sjihh.hihonweb.chap.nine.one.business.User user = (me.sjihh.hihonweb.chap.nine.one.business.User) session.getAttribute("user");

        String url;

        if (user == null) {
            Cookie[] cookies = request.getCookies();
            String emailAddress = CookieUtil.getCookieValue(cookies, "emailCookie");

            if (emailAddress == null || emailAddress.equals("")) {
                url = REGISTER_URL;
            } else {
                ServletContext sc = getServletContext();
                String path = sc.getRealPath("/WEB-INF/EmailList.txt");
                user = me.sjihh.hihonweb.chap.nine.one.data.UserIO.getUser(emailAddress, path);
                session.setAttribute("user", user);
                url = "/child/chap07_ex1/" + productCode + "_download.jsp";
            }
        } else {
            url = "/child/chap07_ex1/" + productCode + "_download.jsp";
        }

        return url;
    }

    private String registerUser(HttpServletRequest request, HttpServletResponse response) {
        // get the user data
        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");

        // store the data in a User object
        me.sjihh.hihonweb.chap.nine.one.business.User user = new User();
        user.setEmail(email);
        user.setFirstName(firstName);
        user.setLastName(lastName);

        // write the User object to a file
        ServletContext sc = getServletContext();
        String path = sc.getRealPath("/child/chap07_ex1/WEB-INF/EmailList.txt");
        if (UserIO.add(user, path)) {
            // store the User object as a session attribute
            HttpSession session = request.getSession();
            session.setAttribute("user", user);

            // add cookies for email and firstName
            addCookie(response, "emailCookie", email);
            addCookie(response, "firstNameCookie", firstName);

            // create and return a URL for the appropriate Download page
            String productCode = (String) session.getAttribute("productCode");
            return "/child/chap09_ex1/" + productCode + "_download.jsp";
        } else {
            // Handle the case where user registration fails (e.g., writing to file fails)
            // You might want to redirect to an error page or handle it according to your application's logic.
            return "/errorPage.jsp";
        }
    }

    private void addCookie(HttpServletResponse response, String name, String value) {
        Cookie cookie = new Cookie(name, value);
        cookie.setMaxAge(60 * 60 * 24 * 365 * 2); // set age to 2 years
        cookie.setPath("/");                      // allow entire app to access it
        response.addCookie(cookie);
    }

    private String deleteCookies(HttpServletRequest request, HttpServletResponse response) {
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            cookie.setMaxAge(0); // delete the cookie
            cookie.setPath("/"); // allow the download application to access it
            response.addCookie(cookie);
        }
        return DELETE_COOKIES_URL;
    }
}