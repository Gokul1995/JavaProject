package info.ecom.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecom.service.ProductService;
import com.ecom.serviceImpl.ProductServiceImpl;

import info.ecom.dbutils.DbConnection;
import info.ecom.model.QuictView;

@WebServlet("/QuickViewController")
public class QuickViewController extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int productId = Integer.parseInt(request.getParameter("productId"));
		
		request.setAttribute("productId", productId);
		RequestDispatcher rd = request.getRequestDispatcher("/front-quickView.jsp");
		rd.forward(request, response);
		
		
		
		
	}

}
