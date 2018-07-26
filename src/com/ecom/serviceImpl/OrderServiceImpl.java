package com.ecom.serviceImpl;

import java.util.List;

import com.ecom.daoImpl.OrderDaoImpl;
import com.ecom.service.OrderService;

import info.ecom.dao.OrderDao;
import info.ecom.model.Order;
import info.ecom.model.OrderDetail;

public class OrderServiceImpl implements OrderService{

	OrderDao od = new OrderDaoImpl();

	@Override
	public void getOrder(int id,Order order) {
		od.getOrder(id,order);
		
	}
	@Override
	public void removeFromCart(int id) {
		
		od.removeFromCart(id);
		
	}

	@Override
	public List<Order> allOrder() {
		
		return null;
	}
	@Override
	public List<Order> generateBill() {
		
		return od.generateBill();
	}
	@Override
	public void deliveryOrder(int id) {
		
		od.deliveryOrder(id);
	}
	@Override
	public void deleteOrder(int id) {
		od.deleteOrder(id);
		
	}
	@Override
	public void sendTodelivery(OrderDetail oDetail) {
		od.sendToDelivery(oDetail);
		
	}
	@Override
	public void sendToRepository(int id) {
		od.sendToRepository(id);
		
	}

	
	
	

}
