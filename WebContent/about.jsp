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
<div style="background-color: black;">

<jsp:include page="front-nav.jsp"></jsp:include>
</div>
<div>
<div class="banner_bottom_agile_info">
	    
			<div class="agile_ab_w3ls_info">
				<div class="col-md-6 ab_pic_w3ls">
				   	<img src="image/iphone-vs-edge.jpg" alt=" " class="img-responsive" />
				</div>
				 <div class="col-md-6 ab_pic_w3ls_text_info">
				    <h5>About Our Mobile <span> Hub</span> </h5>
					<p>Mobile hub is the online store where you can find the best smart phone available on the market..</p>
					<p>Save your time.</p>
				</div>
				  <div class="clearfix"></div>
			</div>    
           
    </div>
</div>
<%-- Team member  --%>
<div class="banner_bottom_agile_info team">
	<div class="container">
	            <h3 class="wthree_text_info">Our Team <span>Members</span></h3>
			<div class="inner_w3l_agile_grids">
					<div class="col-md-3 team-grids">
						<div class="thumbnail team-w3agile">
							<img src="image/banner4.jpg" class="img-responsive" alt="">
							<div class="social-icons team-icons right-w3l fotw33">
							<div class="caption">
								<h4>Developer/woner</h4>
								<p>Add Short Description</p>						
							</div>
								<ul class="social-nav model-3d-0 footer-social w3_agile_social two">
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
							          </div>
						     </div>
			         	</div>
						
						     </div>
			         	</div>
					<div class="clearfix"> </div>
				</div>
	       </div>
		</div>

<jsp:include page="frontFooter.jsp"/>
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
</body>
</html>