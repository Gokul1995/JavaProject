package info.ecom.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ecom.service.OrderService;
import com.ecom.serviceImpl.OrderServiceImpl;

import info.ecom.dao.OrderDao;
import info.ecom.model.Order;
import info.ecom.model.User;

/**
 * Servlet implementation class OrderController
 */
@WebServlet("/OrderController")
public class OrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session =request.getSession();
		User verifiedUser = (User)session.getAttribute("verifiedUser");
		if(verifiedUser != null){
			Order oder = new Order();
			int userId = verifiedUser.getUserId();
			oder.setUserId(userId);
			int total = Integer.parseInt(request.getParameter("totalPrice"));
			oder.setTotalPrice(total);
			OrderService os = new OrderServiceImpl();
			os.getOrder(userId,oder);
			os.removeFromCart(userId);
			response.sendRedirect("bill.jsp");
		}
		
	}

}
