package info.ecom.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.ecom.daoImpl.ProductDaoImpl;
import com.ecom.service.ProductService;
import com.ecom.serviceImpl.ProductServiceImpl;

import info.ecom.dao.ProductDao;
import info.ecom.dbutils.DbConnection;
import info.ecom.model.ProductDetail;

@WebServlet("/AddHandset")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)
public class AddHandset extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String SAVE_DIR="images";
	private static final String SAVE_DIR_GAD = "gadImg";
	
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		if(request.getParameter("addhandset") != null){
	    try {
			PrintWriter out = response.getWriter();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	        String savePath = "/home/gokul/eclipse-workspace/ecommerce-test/WebContent" + File.separator + SAVE_DIR;
	            File fileSaveDir=new File(savePath);
	            if(!fileSaveDir.exists()){
	                fileSaveDir.mkdir();
	            }
		// '/home/gokul/eclipse-workspace/ecommerce-test/WebContent'
	            //"C:\\Users\\GOKUL\\workspace\\ecommerce-test\\WebContent"
		String brand = request.getParameter("brand");
		String model = request.getParameter("model");
		String color = request.getParameter("color");
		int price = Integer.parseInt(request.getParameter("price"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		Part part = request.getPart("file");
		String fileName=extractFileName(part);
        part.write(savePath + File.separator + fileName);
       /* 
        //You need this loop if you submitted more than one file 
        for (Part part : request.getParts()) {
        String fileName = extractFileName(part);
        part.write(savePath + File.separator + fileName);
    }*/
		ProductDetail pro = new ProductDetail();
		pro.setBrand(brand);
		pro.setColor(color);
		pro.setModel(model);
		pro.setPrice(price);
		pro.setQuantity(quantity);
		 String filePath= SAVE_DIR + File.separator + fileName ;
		 pro.setImgurl(filePath);
		
		 ProductService pService = new ProductServiceImpl();
		 pService.addProduct(pro);
		 response.sendRedirect("addhandset.jsp");		
		
		
	}
		else if (request.getParameter("addAsso") !=null) {
			try {
				PrintWriter out = response.getWriter();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			String savePath = "/home/gokul/eclipse-workspace/ecommerce-test/WebContent" + File.separator + SAVE_DIR_GAD;
		        
		            File fileSaveDir=new File(savePath);
		            if(!fileSaveDir.exists()){
		                fileSaveDir.mkdir();
		            }
			
			String brand = request.getParameter("type");
			String model = request.getParameter("model");
			String color = request.getParameter("color");
			int price = Integer.parseInt(request.getParameter("price"));
			int quantity = Integer.parseInt(request.getParameter("quantity"));
			Part part = request.getPart("file");
			String fileName=extractFileName(part);
	        part.write(savePath + File.separator + fileName);
	       /* 
	        //You need this loop if you submitted more than one file 
	        for (Part part : request.getParts()) {
	        String fileName = extractFileName(part);
	        part.write(savePath + File.separator + fileName);
	    }*/
			ProductDetail pro = new ProductDetail();
			pro.setBrand(brand);
			pro.setColor(color);
			pro.setModel(model);
			
			pro.setPrice(price);
			pro.setQuantity(quantity);
			 String filePath= SAVE_DIR_GAD + File.separator + fileName ;
			 pro.setImgurl(filePath);
			
			 ProductDaoImpl proIm = new ProductDaoImpl();
			 proIm.addAsso(pro);
			 response.sendRedirect("addasso.jsp");
				
				
			
			
			
			
			
			
			
			
			
		}
	}
	


	private String extractFileName(Part part) {
	    String contentDisp = part.getHeader("content-disposition");
	    String[] items = contentDisp.split(";");
	    for (String s : items) {
	        if (s.trim().startsWith("filename")) {
	            return s.substring(s.indexOf("=") + 2, s.length()-1);
	        }
	    }
	    return "";
	}

}
