package com.ecom.service;

import java.util.List;

import info.ecom.model.Cart;
import info.ecom.model.User;

public interface CartService {

	public void addToCart(Cart cart);
	public List<Cart>getCartItem(int userId); 
		

}
