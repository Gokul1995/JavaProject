package com.ecom.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

import info.ecom.dao.CartDao;
import info.ecom.dbutils.DbConnection;
import info.ecom.model.Cart;
import info.ecom.model.ProductDetail;
import info.ecom.model.User;


public class CartDaoImpl implements CartDao{
	
	public DbConnection connect = new DbConnection();
	Connection con;
	
	@Override
	public void addToCart(Cart cart) {
		
		con = connect.getConnection();
		String sql ="Insert into cart(product_id,user_id) values(?,?)";
		
		try {
			PreparedStatement pst = con.prepareStatement(sql);
			
			pst.setInt(1, cart.getProductId());
			pst.setInt(2, cart.getUserId());
			pst.executeUpdate();
			
		} catch (Exception e) {
			
			System.out.println("Error at Cart :" +e);
			
		}
		
		
	}

	@Override
	public List<Cart> getCartItem(int userId) {
		
		List<Cart> getCartItem = new ArrayList<>();
		
		
		con = connect.getConnection();
		String sql = "SELECT * FROM handset WHERE handset.id IN (SELECT cart.product_id FROM cart WHERE cart.user_id ="+userId+")";
		
		try {
			PreparedStatement pst = con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			
			while (rs.next()) {
				Cart cart = new Cart();
				
				cart.setBrand(rs.getString("brand"));
				cart.setColor(rs.getString("color"));
				cart.setModel(rs.getString("model"));
				cart.setImgurl(rs.getString("imgpath"));
				cart.setPrice(rs.getInt("price"));
				
				getCartItem.add(cart);
					
			}
		} catch (Exception e) {
			System.out.println("Error at retriving cart"+ e);
		}
		
		return getCartItem;
	}

}
