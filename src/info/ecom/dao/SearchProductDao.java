package info.ecom.dao;

import java.util.List;

import info.ecom.model.ProductDetail;

public interface SearchProductDao {
	
	public List<ProductDetail> searchProduct(String modelName);
	
	

}
