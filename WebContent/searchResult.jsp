<%@page import="com.ecom.serviceImpl.SearchServiceImpl"%>
<%@page import="com.ecom.service.SearchService"%>
<%@page import="info.ecom.model.ProductDetail"%>
<%@page import="java.util.List"%>
<%@page import="com.ecom.serviceImpl.ProductServiceImpl"%>
<%@page import="com.ecom.service.ProductService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>MobileHub - You choose We provide</title>
<!--/tags -->
<jsp:include page="front-link.jsp"></jsp:include>
</head>
<body>
<!-- header -->
<jsp:include page="front-header1.jsp"></jsp:include>
<jsp:include page="front-header.jsp"></jsp:include>
<!-- //header-bot -->
<!-- banner -->
<div class="ban-top">
	<jsp:include page="front-nav.jsp"></jsp:include>
		
		<div class="clearfix"></div>
		
		
	</div>
	<!-- Modal1 -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
						<div class="modal-body modal-body-sub_agile">
						<div class="col-md-8 modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">Sign In <span>Now</span></h3>
									<form action="UserHandler" method="post">
							<div class="styled-input agile-styled-input-top">
								<input type="email" name="email" required="">
								<label>Email</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="password" name="pass" required=""> 
								<label>Password</label>
								<span></span>
							</div> 
							<input type="submit" value="Sign In" name="login">
						</form>
						  <ul class="social-nav model-3d-0 footer-social w3_agile_social top_agile_third">
															<li><a href="#" class="facebook">
																  <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div></a></li>
															<li><a href="#" class="twitter"> 
																  <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div></a></li>
															<li><a href="#" class="instagram">
																  <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div></a></li>
															<li><a href="#" class="pinterest">
																  <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div></a></li>
														</ul>
														<div class="clearfix"></div>
														<p><a href="#" data-toggle="modal" data-target="#myModal2" > Don't have an account?</a></p>

						</div>
						<div class="col-md-4 modal_body_right modal_body_right1">
							<img src="image/iphone-vs-edge.jpg" alt=" "/>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<!-- //Modal content-->
			</div>
		</div>
<!-- //Modal1 -->
<!-- Modal2 -->
		<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
			<div class="modal-dialog">
				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
						<div class="modal-body modal-body-sub_agile">
						<div class="col-md-8 modal_body_left modal_body_left1">
						<h3 class="agileinfo_sign">Sign Up <span>Now</span></h3>
						 <form action="#" method="post">
							<div class="styled-input agile-styled-input-top">
								<input type="text" name="Name" required="">
								<label>Name</label>
								<span></span>
							</div>
							<div class="styled-input">
								<input type="email" name="Email" required=""> 
								<label>Email</label>
								<span></span>
							</div> 
							<div class="styled-input">
								<input type="password" name="password" required=""> 
								<label>Password</label>
								<span></span>
							</div> 
							<div class="styled-input">
								<input type="password" name="Confirm Password" required=""> 
								<label>Confirm Password</label>
								<span></span>
							</div> 
							<input type="submit" value="Sign Up">
						</form>
						  <ul class="social-nav model-3d-0 footer-social w3_agile_social top_agile_third">
															<li><a href="#" class="facebook">
																  <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div></a></li>
															<li><a href="#" class="twitter"> 
																  <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div></a></li>
															<li><a href="#" class="instagram">
																  <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div></a></li>
															<li><a href="#" class="pinterest">
																  <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
																  <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div></a></li>
														</ul>
														<div class="clearfix"></div>
														<p><a href="#">By clicking register, I agree to your terms</a></p>

						</div>
						<div class="col-md-4 modal_body_right modal_body_right1">
							<img src="image/iphone-vs-edge.jpg" alt=" "/>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<!-- //Modal content-->
			</div>
		</div>
<!-- //Modal2 -->

<div class="new_arrivals_agile_w3ls_info"> 
		<div class="container">
		    <h3 class="wthree_text_info">New <span>Arrivals</span></h3>		
				
					<div class="resp-tabs-container">
					<!--/tab_one-->
					<div class="col-md-12">
				
						<%
							String modelName = (String)request.getAttribute("modelName");
							
							SearchService search = new SearchServiceImpl();
							search.searchProduct(modelName);
							
                    		List<ProductDetail> allProduct = search.searchProduct(modelName);
                    		for(ProductDetail pro : allProduct)
                    	{
                    		
						%>
						
							<div class="col-md-3 product-men"">
							
								<div class="men-pro-item simpleCart_shelfItem">
									<div class="men-thumb-item">
										<img src="<%=pro.getImgurl()%>"  alt="img" class="pro-image-front">
										<img src="<%=pro.getImgurl() %>" alt="" class="pro-image-back">
										<%String img = pro.getImgurl(); %>
											<div class="men-cart-pro">
												<div class="inner-men-cart-pro">
												<form action="QuickViewController" class="link-product-add-cart" method="post">
													<input type="hidden" value="<%=pro.getId() %>" name="productId">
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
						</div>
						</div>
						</div>
						

<!-- footer -->
<jsp:include page="frontFooter.jsp"/>
<!-- //footer -->


<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>

	
<!-- stats -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.countup.js"></script>
	
	
	<script>
		$('.counter').countUp();
	</script>
<!-- //stats -->
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/jquery.easing.min.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
  <script src="js/nav.js"></script>


<!-- for bootstrap working -->
<script type="text/javascript" src="js/bootstrap.js"></script>
	</body>
	</html>