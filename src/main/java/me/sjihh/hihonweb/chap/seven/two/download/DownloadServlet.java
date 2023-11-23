package me.sjihh.hihonweb.chap.seven.two.download;

import me.sjihh.hihonweb.chap.seven.two.business.Product;
import me.sjihh.hihonweb.chap.seven.two.business.User;
import me.sjihh.hihonweb.chap.seven.two.data.ProductIO;
import me.sjihh.hihonweb.chap.seven.two.data.UserIO;
import me.sjihh.hihonweb.chap.seven.two.util.CookieUtil;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
@WebServlet("/download02")
public class DownloadServlet extends HttpServlet {

    private static final String VIEW_ALBUMS_ACTION = "viewAlbums";
    private static final String VIEW_COOKIES_ACTION = "viewCookies";
    private static final String DELETE_COOKIES_ACTION = "deleteCookies";
    private static final String REGISTER_USER_ACTION = "registerUser";
    private static final String CHECK_USER_ACTION = "checkUser";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String url = "/c7e2";

        switch (action == null ? VIEW_ALBUMS_ACTION : action) {
            case VIEW_ALBUMS_ACTION:
                break;
            case CHECK_USER_ACTION:
                url = checkUser(request, response);
                break;
            case VIEW_COOKIES_ACTION:
                url = "/child/chap07_ex2/cookie/view_cookies.jsp";
                break;
            case DELETE_COOKIES_ACTION:
                url = deleteCookies(request, response);
                break;
        }

        forwardToView(url, request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String url = "/c7e2";

        if (REGISTER_USER_ACTION.equals(action)) {
            url = registerUser(request, response);
        }

        forwardToView(url, request, response);
    }

    private void forwardToView(String url, HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    private String checkUser(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        String productCode = request.getParameter("productCode");
        String productPath = getServletContext().getRealPath("/child/chap07_ex2/WEB-INF/products.txt");
        Product product = ProductIO.getProduct(productCode, productPath);
        session.setAttribute("product", product);

        User user = (User) session.getAttribute("user");

        if (user == null) {
            String emailAddress = CookieUtil.getCookieValue(request.getCookies(), "emailCookie");

            if (emailAddress == null || emailAddress.isEmpty()) {
                return "/child/chap07_ex2/register.jsp";
            } else {
                String path = getServletContext().getRealPath("/WEB-INF/EmailList.txt");
                user = UserIO.getUser(emailAddress, path);
                session.setAttribute("user", user);
                return "/child/chap07_ex2/download/" + productCode + "_download.jsp";
            }
        } else {
            return "/child/chap07_ex2/download/" + productCode + "_download.jsp";
        }
    }

    private String registerUser(HttpServletRequest request, HttpServletResponse response) {
        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");

        User user = new User(email, firstName, lastName);
        String path = getServletContext().getRealPath("/WEB-INF/EmailList.txt");
        UserIO.add(user, path);

        HttpSession session = request.getSession();
        session.setAttribute("user", user);

        Cookie emailCookie = new Cookie("emailCookie", email);
        emailCookie.setMaxAge(60 * 60 * 24 * 365 * 2); // set age to 2 years
        emailCookie.setPath("/"); // allow entire app to access it
        response.addCookie(emailCookie);

        Product product = (Product) session.getAttribute("product");
        return "/child/chap07_ex2/download/" + product.getCode() + "_download.jsp";
    }

    private String deleteCookies(HttpServletRequest request, HttpServletResponse response) {
        Cookie[] cookies = request.getCookies();
        for (Cookie cookie : cookies) {
            cookie.setMaxAge(0); // delete the cookie
            cookie.setPath("/"); // allow the download application to access it
            response.addCookie(cookie);
        }
        return "/child/chap07_ex2/cookie/delete_cookies.jsp";
    }
}
