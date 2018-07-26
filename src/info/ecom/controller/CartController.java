package info.ecom.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ecom.service.CartService;
import com.ecom.serviceImpl.CartServiceImpl;

import info.ecom.model.Cart;
import info.ecom.model.User;

@WebServlet("/CartController")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		HttpSession session = request.getSession();
		User verifiedUser = (User)session.getAttribute("verifiedUser");
        if(verifiedUser!=null){
        	
        	int userId = verifiedUser.getUserId();
			int productId = Integer.parseInt(request.getParameter("itemid"));
			
			Cart cart = new Cart();
			
			cart.setUserId(userId);
			cart.setProductId(productId);
			
			CartService cService  = new CartServiceImpl();
			cService.addToCart(cart);
			cService.getCartItem(userId);
			
			
			System.out.println("Inserted on cart");
			response.sendRedirect("cart.jsp");
			
			
        }
        else {
			response.sendRedirect("login.jsp");
		}
			
			
	}

}
