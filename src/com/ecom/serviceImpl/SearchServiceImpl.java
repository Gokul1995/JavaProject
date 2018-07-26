package com.ecom.serviceImpl;

import java.util.List;

import com.ecom.daoImpl.SearchProductImpl;
import com.ecom.service.SearchService;

import info.ecom.dao.SearchProductDao;
import info.ecom.model.ProductDetail;

public class SearchServiceImpl implements SearchService {

	SearchProductDao searchPro = new SearchProductImpl();
	@Override
	public List<ProductDetail> searchProduct(String modelName) {
		// TODO Auto-generated method stub
		return searchPro.searchProduct(modelName);
	}

}
