package info.ecom.dao;

import java.util.List;

import info.ecom.model.ProductDetail;

public interface ProductDao {
	
	public void addProduct(ProductDetail pro);
	
	public void addAsso(ProductDetail pro);
	public List<ProductDetail>allProduct();
	public List<ProductDetail>catagory(String brand);
	public ProductDetail quickView(int productId);
	
	

}
