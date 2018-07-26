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

import info.ecom.model.Order;
import info.ecom.model.User;

@WebServlet("/AdminOrderController")
public class AdminOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		HttpSession session = request.getSession();
		User verifiedUser = (User)session.getAttribute("verifiedUser");
		if (verifiedUser != null) {
			if (request.getParameter("orderId") != null) {
				
			
			int oId = Integer.parseInt(request.getParameter("orderId"));
			System.out.println(oId);
			OrderService os = new OrderServiceImpl();
			os.deliveryOrder(oId);
			os.deleteOrder(oId);
			System.out.println("in viewOrder"+oId);
			response.sendRedirect("viewOrder.jsp");
			
			} 
			else if(request.getParameter("deliveryDone") != null) {
				
				
				
				int dId = Integer.parseInt(request.getParameter("deliveryDone"));
				OrderService os = new OrderServiceImpl();
				os.sendToRepository(dId);
				System.out.println(" Test Successfull");
			
			}
			
			
			
		} else {
			response.sendRedirect("login.jsp");
		}
		
	}

}
