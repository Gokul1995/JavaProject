<%@page import="com.ecom.serviceImpl.CartServiceImpl"%>
<%@page import="com.ecom.service.CartService"%>
<%@page import="info.ecom.model.Cart" %>
<%@page import="java.util.List"%>
<%@page import="info.ecom.model.User" %>
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

<jsp:include page="front-header.jsp"></jsp:include>
<!-- //header-bot -->
<!-- banner -->
<div>
		<a class="hvr-outline-out button2" href="LogoutController" style="padding: 10px;margin-bottom: 20px; margin-left: 90%">LogOut </a>
</div>
<div class="ban-top">
	<jsp:include page="front-nav.jsp"></jsp:include>
		
		<div class="clearfix"></div>
	</div>
</div>
<!-- //banner-top -->
<!-- Modal1 -->

<!-- //Modal2 -->

<div style="">
	<h3>Welcome</h3>
	
	<%
	
	User verifiedUser = (User)session.getAttribute("verifiedUser");
 
 	if(verifiedUser != null){
 		String userName = verifiedUser.getUserName();
 	int userId = verifiedUser.getUserId();
 	
 	verifiedUser.setUserName(userName);
	%>
	<h4><%=verifiedUser.getUserName() %></h4>
</div>

<!-- banner -->
	<table class="table table-striped table-bordered table-hover" style="margin-bottom:0px;margin: 75px;">
                                    
                                    <thead>
                                        <tr>
                                            <th>S.N</th>
                                            <th>Item</th>
                                        
                                            <th>Image</th>
                                            <th>Color</th>
                                            <th>Price</th>
                                          
                                            <th>Edit</th>
                                            <th>Delete</th>
											
                                        </tr>
                                    </thead>
                                    <tbody>
                                       <%
                                       	int i = 1;
                                       CartService cService= new CartServiceImpl();
                                       List<Cart> getItem = cService.getCartItem(userId);
                                       //System.out.println(getItem.size());
                                       System.out.println(userId);
                                       System.out.println(getItem.size());
                                       int total = 0;
                                       for(Cart cart : getItem){
                                    	   
                                       %>
                                        <tr>
                                            <td><%=i++ %></td>
                                            <td><%=cart.getBrand() %></td>
                                            <td><img src="<%=cart.getImgurl() %>"alt="img" style="width: 200px; height: 200px;"></td>
                                            <td><%=cart.getColor() %></td>
                                            
                                            <td><%=cart.getPrice() %></td>
                                            <% 
                                            	total = total + cart.getPrice();
                                            %>
                                            <td><a href="CartController?delete=<%=cart.getUserId()%>"><i class="glyphicon glyphicon-pencil"></i></a></td>
                                             <td><a href="CartController?itemDelete=<%=cart.getUserId()%>"><i class="glyphicon glyphicon-trash"></i></a></td> 
											
                                        </tr>
                                       
                                         <%} %>
                                       <tr>
                                       <td colspan="4" style="text-align: center; font-weight: bolder;">Total</td>
                                       <td><%=total %></td>
                                     
                                       </tr>
                                     
                                    </tbody>
                                    
                                </table>
	
	<!-- //banner -->


<!--/grids-->
<div class="carousel-caption" style="position: inherit;">
						<form action="OrderController" method="post">
						<input type="hidden" name="totalPrice" value="<%=total%>">
						<input type="submit" class="hvr-outline-out button2" value="Buy Now">
						</form>
					</div>
      						
<!--/grids-->
<!-- /new_arrivals -->  
<!--/grids-->
<div class="coupons">
		<div class="coupons-grids text-center">
			<div class="w3layouts_mail_grid">
				<div class="col-md-3 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left1 hvr-radial-out">
						<i class="fa fa-truck" aria-hidden="true"></i>
					</div>
					<div class="w3layouts_mail_grid_left2">
						<h3>FREE Delivery</h3>
						<p>Get free delivery of the product you choose</p>
					</div>
				</div>
				<div class="col-md-3 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left1 hvr-radial-out">
						<i class="fa fa-headphones" aria-hidden="true"></i>
					</div>
					<div class="w3layouts_mail_grid_left2">
						<h3>High Availability</h3>
						<p></p>
					</div>
				</div>
				<div class="col-md-3 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left1 hvr-radial-out">
						<i class="fa fa-shopping-bag" aria-hidden="true"></i>
					</div>
					<div class="w3layouts_mail_grid_left2">
						<h3>MONEY BACK GUARANTEE</h3>
						<p>Guarantee money back on wrong product</p>
					</div>
				</div>
					<div class="col-md-3 w3layouts_mail_grid_left">
					<div class="w3layouts_mail_grid_left1 hvr-radial-out">
						<i class="fa fa-gift" aria-hidden="true"></i>
					</div>
					<div class="w3layouts_mail_grid_left2">
						<h3>Get Heavy Discount</h3>
						<p>Heavy discount on the occasion</p>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>

		</div>
</div>
<!--grids-->
<!-- footer -->
<jsp:include page="frontFooter.jsp"/>
<!-- //footer -->

<!-- login -->
			
<!-- //login -->
<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<script src="js/modernizr.custom.js"></script>
	<!-- Custom-JavaScript-File-Links --> 
	<!-- cart-js -->
	<script src="js/minicart.min.js"></script>
<script>
	// Mini Cart
	paypal.minicart.render({
		action: '#'
	});

	if (~window.location.search.indexOf('reset=true')) {
		paypal.minicart.reset();
	}
</script>

	<!-- //cart-js --> 
<!-- script for responsive tabs -->						
<script src="js/easy-responsive-tabs.js"></script>
<script>
	$(document).ready(function () {
	$('#horizontalTab').easyResponsiveTabs({
	type: 'default', //Types: default, vertical, accordion           
	width: 'auto', //auto or any width like 600px
	fit: true,   // 100% fit in a container
	closed: 'accordion', // Start closed if in accordion view
	activate: function(event) { // Callback function if tab is switched
	var $tab = $(this);
	var $info = $('#tabInfo');
	var $name = $('span', $info);
	$name.text($tab.text());
	$info.show();
	}
	});
	$('#verticalTab').easyResponsiveTabs({
	type: 'vertical',
	width: 'auto',
	fit: true
	});
	});
</script>
<!-- //script for responsive tabs -->		
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
<%}
 	else{
	RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
	rd.forward(request, response);
	}%>

</body>
</html>
