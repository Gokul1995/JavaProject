package com.ecom.serviceImpl;

import java.util.List;

import com.ecom.daoImpl.ProductDaoImpl;
import com.ecom.service.ProductService;

import info.ecom.dao.ProductDao;
import info.ecom.model.ProductDetail;

public class ProductServiceImpl implements ProductService {

	ProductDao product = new ProductDaoImpl();
	@Override
	public void addProduct(ProductDetail pro) {
		
		product.addProduct(pro);
		
		
	}
	@Override
	public List<ProductDetail> allProduct() {
		
		return product.allProduct();
	}
	@Override
	public List<ProductDetail> catagory(String brand) {
		
		return product.catagory(brand);
	}
	@Override
	public ProductDetail quickView(int productId) {
		
		return product.quickView(productId);
	}
	
	

}
