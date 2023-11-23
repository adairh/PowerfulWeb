package me.sjihh.hihonweb.chap.nine.two.cart;

import me.sjihh.hihonweb.chap.nine.two.business.Cart;
import me.sjihh.hihonweb.chap.nine.two.business.LineItem;
import me.sjihh.hihonweb.chap.nine.two.business.Product;
import me.sjihh.hihonweb.chap.nine.two.data.ProductIO;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/cart92")
public class CartServlet extends HttpServlet {

    private static final String ACTION_SHOP = "shop";
    private static final String ACTION_CART = "cart";
    private static final String ACTION_CHECKOUT = "checkout";
    private static final String DEFAULT_ACTION = "cart";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        action = (action == null) ? DEFAULT_ACTION : action;

        String url = "/c9e2t";
        switch (action) {
            case ACTION_SHOP:
                break; // default action already set
            case ACTION_CART:
                handleCartAction(request);
                if (flag) flag = false;
                url = "/child/chap09_ex2/cart.jsp";
                break;
            case ACTION_CHECKOUT:
                url = "/child/chap09_ex2/checkout.jsp";
                break;
        }

        getServletContext().getRequestDispatcher(url).forward(request, response);
    }

    boolean flag = false;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        flag = true;
        doPost(request, response);
    }

    private void handleCartAction(HttpServletRequest request) {
        String productCode = request.getParameter("productCode");
        String quantityString = request.getParameter("quantity");

        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
        }

        int quantity;
        try {
            quantity = Integer.parseInt(quantityString);
            if (quantity < 0) {
                quantity = 1;
            }
        } catch (NumberFormatException nfe) {
            quantity = 1;
        }

        String path = getServletContext().getRealPath("/child/chap09_ex2/WEB-INF/products.txt");
        Product product = ProductIO.getProduct(productCode, path);

        LineItem lineItem = new LineItem(product, quantity);
        if (quantity > 0) {
            cart.addItem(lineItem, !flag);
        } else {
            cart.removeItem(lineItem);
        }

        session.setAttribute("cart", cart);
    }
}
