package info.ecom.dao;

import java.util.List;

import info.ecom.model.Order;
import info.ecom.model.OrderDetail;
import info.ecom.model.ProductDetail;

public interface AdminOrderDao {
	
	
	public List<Order>allOrder();

	public List<OrderDetail> orderDetail();
	
	public List<OrderDetail> displayDelivery();
	
	public void deliveryReview(OrderDetail od);

}
