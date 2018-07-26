package info.ecom.controller;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ecom.daoImpl.ProductDaoImpl;
import com.ecom.service.ProductService;
import com.ecom.serviceImpl.ProductServiceImpl;

import info.ecom.dbutils.DbConnection;
import info.ecom.model.ProductDetail;

@WebServlet({"/CatagoriesController","/CatagoriesController/Handset","/CatagoriesController/Accesories"})
public class CatagoriesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String brand = request.getParameter("brand");
		System.out.println(brand);
		
//		ProductService productCatagory = new ProductServiceImpl();
		
//		productCatagory.catagory(brand);
		request.setAttribute("brand",brand );
		RequestDispatcher rd = request.getRequestDispatcher("/catagories.jsp");
		rd.forward(request, response);
		
		
//if(request.getRequestURI().equals(request.getContextPath()+"/CatagoriesController/Handset")){
//		String brand = request.getParameter("brand");
//		System.out.println(brand);
//		
////		ProductService productCatagory = new ProductServiceImpl();
//		
////		productCatagory.catagory(brand);
//		request.setAttribute("brand",brand );
//		RequestDispatcher rd = request.getRequestDispatcher("/catagories.jsp");
//		rd.forward(request, response);
//		
//}
//else if(request.getRequestURI().equals(request.getContextPath()+"/CatagoriesController/Accesories")){
//	
//}
//else {
//	System.out.println("Error at catagory controller");
//}
//		
	}

	

}