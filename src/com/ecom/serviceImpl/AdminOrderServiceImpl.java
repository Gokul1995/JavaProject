package com.ecom.serviceImpl;

import java.util.List;

import com.ecom.daoImpl.AdminOrderDaoImpl;
import com.ecom.service.AdminOrderService;

import info.ecom.dao.AdminOrderDao;
import info.ecom.model.Order;
import info.ecom.model.OrderDetail;
import info.ecom.model.ProductDetail;

public class AdminOrderServiceImpl implements AdminOrderService  {
	
	AdminOrderDao order = new AdminOrderDaoImpl();

	@Override
	public List<Order> allOrder() {
		
		return order.allOrder();
	}

	@Override
	public List<OrderDetail> orderDetail() {
		
		return order.orderDetail();
	}

	@Override
	public List<OrderDetail> displayDelivery() {
		
		return order.displayDelivery();
	}

}
