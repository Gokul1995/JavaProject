package info.ecom.dao;

import java.util.List;

import info.ecom.model.Order;
import info.ecom.model.OrderDetail;

public interface OrderDao {
	
	public void getOrder(int id, Order order);
	public void removeFromCart(int id);
	public List<Order> allOrder();
	
	public List<Order> generateBill();
	public void deliveryOrder(int id);
	public void deleteOrder(int id);
	public void sendToDelivery(OrderDetail od);
	public void sendToRepository(int id);
	public List<OrderDetail> listRepo(OrderDetail od);
	

}
