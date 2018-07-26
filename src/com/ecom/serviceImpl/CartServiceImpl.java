package com.ecom.serviceImpl;

import java.util.List;

import com.ecom.daoImpl.CartDaoImpl;
import com.ecom.service.CartService;

import info.ecom.dao.CartDao;
import info.ecom.model.Cart;
import info.ecom.model.User;

public class CartServiceImpl implements CartService{

	CartDao cartItem = new CartDaoImpl();
	@Override
	public void addToCart(Cart cart) {
		
		cartItem.addToCart(cart);
		
	}

	@Override
	public List<Cart> getCartItem(int userId) {
		
		return cartItem.getCartItem(userId);
	}

}
