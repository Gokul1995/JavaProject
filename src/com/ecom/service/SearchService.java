package com.ecom.service;

import java.util.List;

import info.ecom.model.ProductDetail;

public interface SearchService {
	public List<ProductDetail> searchProduct(String modelName);

}
