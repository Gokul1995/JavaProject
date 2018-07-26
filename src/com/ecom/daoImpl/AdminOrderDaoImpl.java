package com.ecom.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import info.ecom.dao.AdminOrderDao;
import info.ecom.dbutils.DbConnection;
import info.ecom.model.Order;
import info.ecom.model.OrderDetail;
import info.ecom.model.ProductDetail;

public class AdminOrderDaoImpl implements AdminOrderDao{
	
	DbConnection connect = new DbConnection();
	Connection conn;

	@Override
	public List<Order> allOrder() {
		
		List<Order> allOrder = new ArrayList<>();
		
		conn = connect.getConnection();
		
		String sql = "select * from order_table";
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
			
				Order order = new Order();
				order.setUserId(rs.getInt("user_id"));
				order.setOrderId(rs.getInt("order_id"));
				order.setProductId(rs.getInt("product_id"));
				allOrder.add(order);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return allOrder;
	}

	@Override
	public List<OrderDetail> orderDetail() {
		List<OrderDetail> orderDetail = new ArrayList<>();
		
			conn = connect.getConnection();
			String sql = "SELECT user.id,user.name,user.address,user.phone,handset.id,handset.brand,handset.price,handset.color,handset.model,"
					+ "order_table.order_id "
					+ "FROM user,handset,order_table WHERE"
					+ " order_table.user_id = user.id AND order_table.product_id = handset.id";
			try {
				PreparedStatement pst = conn.prepareStatement(sql);
				ResultSet rs = pst.executeQuery();
				
				while(rs.next()){
					OrderDetail oDetail = new OrderDetail();
					oDetail.setOrderId(rs.getInt("order_id"));
					oDetail.setBrand(rs.getString("brand"));
					oDetail.setColor(rs.getString("color"));
					oDetail.setModel(rs.getString("model"));
					
					oDetail.setPrice(rs.getInt("price"));
					oDetail.setUserName(rs.getString("name"));
					
					oDetail.setUserAddress(rs.getString("address"));
					oDetail.setUserContact(rs.getInt("phone"));
				
					orderDetail.add(oDetail);
					
				}
				
			} catch (Exception e) {
				System.out.println("Error at retraving Order Detail" +e);
			}
			
		
		for(OrderDetail od : orderDetail){
			System.out.println(od.getBrand());
			System.out.println(od.getOrderId());
		}
		
		
		return orderDetail;
	}

	@Override
	public List<OrderDetail> displayDelivery() {
		
		List<OrderDetail> deliveryList = new ArrayList<>();
		
		conn = connect.getConnection();
		String sql = "Select * from delivery_section where status = 0";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()){
				OrderDetail od = new OrderDetail();
				od.setOrderId(rs.getInt("order_id"));
				od.setBrand(rs.getString("brand"));
				od.setModel(rs.getString("model"));
				od.setColor(rs.getString("color"));
				od.setUserName(rs.getString("userName"));
				od.setUserAddress(rs.getString("userAddress"));
				od.setUserContact(rs.getInt("userContact"));
				deliveryList.add(od);
			}
			
			
			
		} catch (Exception e) {
			System.out.println("Error at displaying Delicery List");
		}
		
		return deliveryList;
	}

	@Override
	public void deliveryReview(OrderDetail od) {
		
		
		
	}

}
