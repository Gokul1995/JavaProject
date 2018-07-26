package com.ecom.service;

import java.util.List;

import info.ecom.model.ProductDetail;

public interface ProductService {
	
	public void addProduct(ProductDetail pro);
	public List<ProductDetail>allProduct();
	public List<ProductDetail>catagory(String brand);
	public ProductDetail quickView(int productId);
	

}
