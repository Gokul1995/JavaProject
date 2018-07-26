package com.ecom.service;

import java.util.List;

import info.ecom.model.Order;
import info.ecom.model.OrderDetail;
import info.ecom.model.ProductDetail;

public interface AdminOrderService {
	
	public List<Order>allOrder();
	public List<OrderDetail>orderDetail();
	
	public List <OrderDetail> displayDelivery();	
}
