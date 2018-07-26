<%@page import="info.ecom.model.ProductDetail"%>
  <%@page import="java.util.List"%>
<%@page import="com.ecom.serviceImpl.ProductServiceImpl"%>
<%@page import="com.ecom.service.ProductService"%>
<%@ page import="info.ecom.model.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
   
<div class="new_arrivals_agile_w3ls_info"> 
		<div class="container">
		    <h3 class="wthree_text_info">New <span>Arrivals</span></h3>		
				<div id="horizontalTab">
						<ul class="resp-tabs-list">
							<li> HandSet</li>
							<li> Accessories</li>
							
							
						</ul>
					<div class="resp-tabs-container">
					<!--/tab_one-->
						<div class="tab1">
						<%
						String brand = (String)request.getAttribute("brand") ;
						System.out.println("");
							ProductService productService = new ProductServiceImpl();
                    		List<ProductDetail> allProduct = productService.catagory(brand);
                    		for(ProductDetail pro : allProduct)
                    			
                    	{
                    		
						%>
							<div class="col-md-3 product-men">
							
								<div class="men-pro-item simpleCart_shelfItem">
									<div class="men-thumb-item">
										<img src="<%=pro.getImgurl()%>" width="175px" alt="img" class="pro-image-front">
										<img src="<%=pro.getImgurl() %>" alt="" class="pro-image-back">
										<%String img = pro.getImgurl();
										 
										%>
										
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
												<form action="QuickViewController" class="link-product-add-cart" method="post">
													<input type="hidden" value="<%=pro.getId()%>" name="productId">
													<input type="submit" style="background-color: transparent;" value="Quick View">
												</form>
												</div>
											</div>
											<span class="product-new-top">New</span>
									</div>
									<div class="item-info-product ">
										<h4><a href="#"><%=pro.getBrand()%></a></h4>
										<div class="info-product-price">
											<span class="item_price"><%=pro.getPrice()%></span>
<!-- 											<del>Rs. 70000</del> -->
										</div>
										<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
															<form action="CartController" method="post">
																	<input type="hidden" name = "itemid" value="<%= pro.getId()%>">
																	<input type="submit" name="addtocart" value="Add to cart" class="button" />
																
															</form>
														</div>
																			
									</div>
								</div>
							</div>
							<%} %>
							
								
							<div class="clearfix"></div>
						</div>
						<!--//tab_one-->
						<!--/tab_two-->
						<div class="tab2">
							 <div class="col-md-3 product-men">
								<div class="men-pro-item simpleCart_shelfItem">
									<div class="men-thumb-item">
										<img src="ecom-img/e1.jpg" alt="" class="pro-image-front">
										<img src="ecom-img/e1.jpg" alt="" class="pro-image-back">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="single.html" class="link-product-add-cart">Quick View</a>
												</div>
											</div>
											<span class="product-new-top">New</span>
											
									</div>
									<div class="item-info-product ">
										<h4><a href="single.html">Earphone</a></h4>
										<div class="info-product-price">
											<span class="item_price">Rs. 800</span>
										
										</div>
										<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
															<form action="#" method="post">
																
																	<input type="submit" name="submit" value="Add to cart" class="button" />
																
															</form>
														</div>
																			
									</div>
								</div>
							</div>
							<div class="col-md-3 product-men">
								<div class="men-pro-item simpleCart_shelfItem">
									<div class="men-thumb-item">
										<img src="ecom-img/e2-w.jpg" alt="" class="pro-image-front">
										<img src="ecom-img/e2-w.jpg" alt="" class="pro-image-back">
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
													<a href="single.html" class="link-product-add-cart">Quick View</a>
												</div>
											</div>
											<span class="product-new-top">New</span>
											
									</div>
									<div class="item-info-product ">
										<h4><a href="single.html">White Earphone</a></h4>
										<div class="info-product-price">
											<span class="item_price">Rs. 800</span>
										
										</div>
										<div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out button2">
															<form action="#" method="post">
																
																	<input type="submit" name="submit" value="Add to cart" class="button" />
																
															</form>
														</div>
																			
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
						
					</div>
				</div>	
			</div>
		</div>