package me.sjihh.hihonweb.chap.nine.two.cart;

import me.sjihh.hihonweb.chap.nine.two.business.Product;
import me.sjihh.hihonweb.chap.nine.two.data.ProductIO;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.util.ArrayList;

@WebServlet("/c9e2")
public class ProductsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        String path = getServletContext().getRealPath("/child/chap09_ex2/WEB-INF/products.txt");
        ArrayList<Product> products = ProductIO.getProducts(path);
        session.setAttribute("products", products);

        String url = "/c9e2t";
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}
