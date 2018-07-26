package com.ecom.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import info.ecom.dao.OrderDao;
import info.ecom.dbutils.DbConnection;
import info.ecom.model.Order;
import info.ecom.model.OrderDetail;

public class OrderDaoImpl implements OrderDao{
	
	public DbConnection connect = new DbConnection();
	Connection conn = connect.getConnection();
	
	@Override
	public void getOrder(int id,Order od) {
		
		//conn = connect.getConnection();
		String sql = "Insert into order_table (user_id,product_id) select user_id, product_id from cart where user_id="+id+" ";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("Error at order dao while inserting order:" +e);
		}
		String sql2 = "insert into price_table (user_id,total_price) value (?,?)";
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql2);
			pst.setInt(1, id);
			pst.setInt(2, od.getTotalPrice());
			pst.executeUpdate();
		} catch (Exception e) {
			System.out.println("Error at inserting total price " +e);
		}
		
		
	}


	@Override
	public void removeFromCart(int id) {

		//conn = connect.getConnection();
		String sql = "Delete from cart where user_id = "+id+"";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("Error while removing product from cart :" +e);
		}
		
	}

	@Override
	public List<Order> allOrder() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<Order> generateBill() {
		List<Order> generateBill = new ArrayList<>();
		Order od = new Order();
		
		//conn = connect.getConnection();
		
		String sql = "select total price from price_table where userId ="+od.getUserId()+"";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				Order oder = new Order();
				oder.setTotalPrice(rs.getInt("total_price"));
				generateBill.add(oder);
				
				
			}
					
			
		} catch (Exception e) {
			System.out.println("Exception at handling total price:" +e);
		}
		return generateBill;
	}

//for delevery section
	@Override
	public void deliveryOrder(int id) {
		
		
		//conn = connect.getConnection();
		String sql = "SELECT user.id,user.name,user.address,user.phone,handset.id,handset.brand,handset.price,handset.color,handset.model,"
				+ "order_table.order_id "
				+ "FROM user,handset,order_table WHERE"
				+ " order_table.user_id = user.id AND order_table.product_id = handset.id AND order_table.order_id = "+id+"";
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
				System.out.println(oDetail.getBrand());
				sendToDelivery(oDetail);
				
			}
			
		} catch (Exception e) {
			System.out.println("Error at Delevery section" +e);
		}
		
	
	}


	@Override
	public void deleteOrder(int id) {
		conn = connect.getConnection();
		String sql = "Delete from order_table where order_id ="+id+"";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.executeUpdate();
		} catch (Exception e) {
			System.out.println("Error at deleting order " +e);
		}
		
	}


	@Override
	public void sendToDelivery(OrderDetail od) {
		
		//conn = connect.getConnection();
		String sql = "insert into delivery_section(order_id,brand,model,color,price,userName,userAddress,userContact)"
				+ " values (?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			
				
				pst.setInt(1, od.getOrderId());
				pst.setString(2, od.getBrand());
				pst.setString(3, od.getModel());
				pst.setString(4, od.getColor());
				pst.setInt(5, od.getPrice());
				pst.setString(6, od.getUserName());
				pst.setString(7, od.getUserAddress());
				pst.setInt(8, od.getUserContact());
			
			pst.executeUpdate();
			
			
			
			
			
		} catch (Exception e) {
			System.out.println("Error at sending to delevry section " +e);
		}
		
		
		
		
	}

	//after delevery section sending data to repository
	@Override
	public void sendToRepository(int id) {
		
		String sql = "Select *from delivery_section where order_id = "+id+"";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			
			while(rs.next()){
				
				OrderDetail oDetail = new OrderDetail();
				oDetail.setOrderId(rs.getInt("order_id"));
				oDetail.setBrand(rs.getString("brand"));
				oDetail.setColor(rs.getString("color"));
				oDetail.setModel(rs.getString("model"));
				oDetail.setDeliveryId(rs.getInt("delivery_id"));
				oDetail.setPrice(rs.getInt("price"));
				oDetail.setUserName(rs.getString("userName"));
				oDetail.setUserAddress(rs.getString("userAddress"));
				oDetail.setUserContact(rs.getInt("userContact"));
				
				repositoryHelper(oDetail);
				
			}
			
		} catch (Exception e) {
			
			System.out.println("Error while sending to repository . " +e);
		}
		
		
	}
	public void repositoryHelper(OrderDetail od){
		String sql = "insert into repository(order_id,delivery_id,brand,model,color,price,userName,userAddress,userContact)"
				+ " values (?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, od.getOrderId());
			pst.setInt(2, od.getDeliveryId());
			pst.setString(3, od.getBrand());
			pst.setString(4, od.getModel());
			pst.setString(5, od.getColor());
			pst.setInt(6, od.getPrice());
			pst.setString(7, od.getUserName());
			pst.setString(8, od.getUserAddress());
			pst.setInt(9, od.getUserContact());
		
		pst.executeUpdate();
			
			
		} catch (Exception e) {
			System.out.println("Error at repository Helper" +e);
		}
	}


	@Override
	public List<OrderDetail> listRepo(OrderDetail od) {
		// TODO Auto-generated method stub
		return null;
	}
	
	

}
