package com.ecom.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import info.ecom.dao.SearchProductDao;
import info.ecom.dbutils.DbConnection;
import info.ecom.model.ProductDetail;

public class SearchProductImpl implements SearchProductDao {

	DbConnection connect = new DbConnection();
	Connection conn;
	
	@Override
	public List<ProductDetail> searchProduct(String modelName) {
		
		System.out.println("inside searc product");
		List<ProductDetail> searchDetail = new ArrayList<>();
		
		conn = connect.getConnection();
		String sql = "Select * from handset where model like '"+modelName+"%'";
		
		try {
			
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			System.out.println("Query Excuted");
			while(rs.next()){
				ProductDetail pro = new ProductDetail();
				pro.setId(rs.getInt("id"));
				pro.setBrand(rs.getString("brand"));
				pro.setModel(rs.getString("model"));
				pro.setColor(rs.getString("color"));
				pro.setPrice(rs.getInt("price"));
				pro.setImgurl(rs.getString("imgpath"));
				System.out.println(rs.getString("imgpath"));
				System.out.println("inside resultset");
				searchDetail.add(pro);
				
			}
		} catch (Exception e) {
			System.out.println("Erro while searching for Product" +e);
		}
		
		
		return searchDetail;
		
	}


}
