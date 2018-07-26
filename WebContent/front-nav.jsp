<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div class="container">
		<div class="top_nav_left">
			<nav class="navbar navbar-default">
			  <div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
				  <ul class="nav navbar-nav menu__list">
					<li class="active menu__item menu__item--current"><a class="menu__link" href="index.jsp">Home <span class="sr-only">(current)</span></a></li>
					<li class=" menu__item"><a class="menu__link" href="about.jsp">About</a></li>
					<li class="dropdown menu__item">
						<a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Handsets <span class="caret"></span></a>
							<ul class="dropdown-menu multi-column columns-3">
								<div class="agile_inner_drop_nav_info">
									<div class="col-sm-6 multi-gd-img1 multi-gd-text ">
										<a href="handsets.jsp"><img src="image/nav-img.png" alt=" "/></a>
									</div>
									<div class="col-sm-3 multi-gd-img">
										<ul class="multi-column-dropdown">
											<li><a href="CatagoriesController?brand=iphone">Iphone</a></li>
											<li><a href="CatagoriesController?brand=samsung">Samsung</a></li>
											<li><a href="CatagoriesController?brand=huawei">Huawei</a></li>
											<li><a href="CatagoriesController?brand=gionee">Gionee</a></li>
											<li><a href="CatagoriesController?brand=sony">Sony</a></li>
											<li><a href="CatagoriesController?brand=htc">Htc</a></li>
											<li><a href="CatagoriesController?brand=mi">MI</a></li>
										</ul>
									</div>
									<div class="col-sm-3 multi-gd-img">
										<ul class="multi-column-dropdown">
											<li><a href="#">other</a></li>
											
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</ul>
					</li>
					<li class="dropdown menu__item">
						<a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Accessories <span class="caret"></span></a>
							<ul class="dropdown-menu multi-column columns-3">
								<div class="agile_inner_drop_nav_info">
									<div class="col-sm-3 multi-gd-img">
										<ul class="multi-column-dropdown">
											<li><a href="#">Headset</a></li>
											<li><a href="#">Earphone</a></li>
											<li><a href="#">Battery</a></li>
											<li><a href="#">Housing</a></li>
											<li><a href="#">Back Cover</a></li>
				
										</ul>
									</div>
									<div class="col-sm-3 multi-gd-img">
										<ul class="multi-column-dropdown">
											<li><a href="#">Stickers</a></li>
											<li><a href="#">Other</a></li>
											
										</ul>
									</div>
									<div class="col-sm-6 multi-gd-img multi-gd-text ">
										<a href="#"><img src="image/nav-asso.jpg" alt=" "/></a>
									</div>
									<div class="clearfix"></div>
								</div>
							</ul>
					</li>
<!-- 					<li class="menu__item dropdown"> -->
<!-- 					   <a class="menu__link" href="#" class="dropdown-toggle" data-toggle="dropdown">Short Codes <b class="caret"></b></a> -->
<!-- 								<ul class="dropdown-menu agile_short_dropdown"> -->
<!-- 									<li><a href="icons.html">Web Icons</a></li> -->
<!-- 									<li><a href="typography.html">Typography</a></li> -->
<!-- 								</ul> -->
<!-- 					</li> -->
					<li class=" menu__item"><a class="menu__link" href="contact.jsp">Contact</a></li>
				  </ul>
				</div>
			  </div>
			</nav>	
		</div>
		<div class="top_nav_right">
			<div class="wthreecartaits wthreecartaits2 cart cart box_1"> 
						<form action="cart.jsp" method="post" class="last"> 
						
						<button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
					</form>  
  
						</div>
		</div>
		</div>