package info.ecom.dao;

import java.util.List;

import info.ecom.model.Cart;
import info.ecom.model.ProductDetail;
import info.ecom.model.User;

public interface CartDao {
	
	public void addToCart(Cart  cart);
	public List<Cart>getCartItem(int userId); 
		


}
