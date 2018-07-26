package info.ecom.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ecom.daoImpl.UserDaoImpl;
import com.ecom.service.UserService;
import com.ecom.serviceImpl.UserServiceImpl;

import info.ecom.model.User;

@WebServlet("/UserHandler")
public class UserHandler extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("login") != null){
			
			String userName = request.getParameter("email");
			String userPass = request.getParameter("pass");
			
			User user = new User();
	          
	           UserService uservice=new UserServiceImpl();
	           user.setUserName(userName);
	           user.setUserPassword(userPass);
	           
	           User verifiedUser = uservice.verifyUser(user);
	      
	            if(verifiedUser==null){
	                response.sendRedirect("login.jsp");
	            
	            }else{
	            HttpSession session = request.getSession();	            
	            session.setAttribute("verifiedUser", verifiedUser);
	            int level = (Integer)verifiedUser.getUserLevel();
	            
	            session.setAttribute("level", level);
	            if(level==1){
	            response.sendRedirect("dashboardIndex.jsp");
	            }else{
	            response.sendRedirect("index_user.jsp");
	            }
	            }
	        }else if(request.getParameter("signup")!=null){
	            User user = new User();
	            user.setUserName(request.getParameter("username"));
	            user.setEmail(request.getParameter("email"));
	            user.setUserPassword(request.getParameter("pass"));
	            user.setAddress(request.getParameter("address"));
	            user.setPhone(request.getParameter("phone"));
	            System.out.println(user.getUserPassword());
	            UserDaoImpl ud = new UserDaoImpl();
	            ud.registerUser(user);
	            
	            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
	                rd.forward(request, response);
	                
	            
	            }
			
		}
		
	}


