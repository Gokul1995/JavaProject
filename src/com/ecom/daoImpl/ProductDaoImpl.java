package com.ecom.daoImpl;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Part;

import info.ecom.dao.ProductDao;
import info.ecom.dbutils.DbConnection;
import info.ecom.model.ProductDetail;

public class ProductDaoImpl implements ProductDao{
	
	public DbConnection connect = new DbConnection();
	Connection conn;
	
	public void addProduct(ProductDetail pro){
		
		conn = connect.getConnection();
		String sql = "insert into handset(brand,model,color,price,quantity,imgpath) values(?,?,?,?,?,?)";
		
		
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, pro.getBrand());
			pst.setString(2, pro.getModel());
			pst.setString(3, pro.getColor());
			pst.setInt(4, pro.getPrice());
			pst.setInt(5, pro.getQuantity());
			pst.setString(6, pro.getImgurl());
			
			pst.executeUpdate();
		} catch (SQLException e) {
			
			System.out.println("Error at Product DAO" +e);
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public void addAsso(ProductDetail pro) {
		conn = connect.getConnection();
		String sql = "insert into assoceries(brand,model,color,price,quantity,imgurl) values(?,?,?,?,?,?)";
		
		
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, pro.getBrand());
			pst.setString(2, pro.getModel());
			pst.setString(3, pro.getColor());
			pst.setInt(4, pro.getPrice());
			pst.setInt(5, pro.getQuantity());
			pst.setNString(6, pro.getImgurl());
			
			pst.executeUpdate();
		} catch (SQLException e) {
			
			System.out.println("Error at Product DAO" +e);
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
		
	}

	@Override
	public List<ProductDetail> allProduct() {
		
			List<ProductDetail> allProduct = new ArrayList<>();
		
			conn = connect.getConnection();
			String sql = "select * from handset";
			try {
				PreparedStatement pst = conn.prepareStatement(sql);
				ResultSet rs = pst.executeQuery();
				while (rs.next()) {
					
					ProductDetail pro = new ProductDetail();
					pro.setId(rs.getInt("id"));
					pro.setBrand(rs.getString("brand"));
					pro.setModel(rs.getString("model"));
					pro.setColor(rs.getString("color"));
					pro.setPrice(rs.getInt("price"));
					pro.setImgurl(rs.getString("imgpath"));
					pro.setQuantity(rs.getInt("quantity"));
					allProduct.add(pro);
					
				}
				
				
			} catch (Exception e) {
				// TODO: handle exception
			}
			
			return allProduct;
	}

	@Override
	public List<ProductDetail> catagory(String brand) {
		
		List<ProductDetail> catagory = new ArrayList<>();
		DbConnection connect = new DbConnection();
		
		Connection conn;
		String Sql = "select * from handset where brand = '"+brand+"'";
		try {
			
			conn = connect.getConnection();
			PreparedStatement pst = conn.prepareStatement(Sql);
			ResultSet rs = pst.executeQuery();
			
		
			while(rs.next()){
				ProductDetail pro = new ProductDetail();
				pro.setImgurl(rs.getString("imgpath"));
				pro.setColor(rs.getString("color"));
				pro.setBrand(rs.getString("brand"));
				pro.setPrice(rs.getInt("price"));
				pro.setId(rs.getInt("id"));
				pro.setModel(rs.getString("model"));
				System.out.println(pro.getImgurl());
				catagory.add(pro);
				
				
			}		
		} catch (Exception e) {
			System.out.println("Exception caught " +e);
		}
		return catagory;
	}

	@Override
	public ProductDetail quickView(int productId) {
		
		
		try{
			ProductDetail pro = new ProductDetail();
		conn = connect.getConnection();
		String Sql = "Select * from handset where id = "+productId+"";
		PreparedStatement pst = conn.prepareStatement(Sql);
		ResultSet rs = pst.executeQuery();
		
		while (rs.next()) {
			
			pro.setImgurl(rs.getString("imgpath"));
			pro.setColor(rs.getString("color"));
			pro.setBrand(rs.getString("brand"));
			pro.setPrice(rs.getInt("price"));
			pro.setId(rs.getInt("id"));
			pro.setModel(rs.getString("model"));
			System.out.println(pro.getBrand());
			
			return pro;
			
		}
		}catch(Exception e){
			System.out.println("Exception caught at quickView " +e);
			
		}
		
		return null;
		
		
	}
	

	

}
