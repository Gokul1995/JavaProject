<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <aside>
	<div id="sidebar" class="nav-collapse ">
		<!-- sidebar menu start-->
		<ul class="sidebar-menu" id="nav-accordion">

			<p class="centered">
				<a href="profile.html"><img src="assets/img/ui-sam.jpg"
					class="img-circle" width="60"></a>
			</p>
			<h5 class="centered">Gokul</h5>

			<li class="mt"><a class="active" href="dashboardIndex.jsp"> <i
					class="fa fa-dashboard"></i> <span>Dashboard</span>
			</a></li>

			<li class="sub-menu"><a href="javascript:;"> <i
					class="fa fa-desktop"></i> <span>Add Products</span>
			</a>
				<ul class="sub">
					<li><a href="addasso.jsp">Accessories</a></li>
					<li><a href="addhandset.jsp">Handsets</a></li>
					<li><a href="addother.jsp">Other</a></li>
					<li><a href="viewProduct.jsp">View Product</a>
				</ul></li>
				
				

			<li class="sub-menu"><a href="javascript:;"> <i
					class="fa fa-cogs"></i> <span>Manage Custumer</span>
			</a>
				<ul class="sub">
					<li><a href="#">View Custumer</a></li>
					<li><a href="manageCust.jsp">Edit Costumer</a></li>
				</ul></li>
			<li class="sub-menu"><a href="javascript:;"> <i
					class="fa fa-book"></i> <span>Manage Order</span>
			</a>
				<ul class="sub">
					<li><a href="viewOrder.jsp">View Order</a></li>
					<li><a href="#">Delivery Section</a></li>
					
				</ul></li>
			
			
			<li class="sub-menu"><a href="#"> <i
					class=" fa fa-bar-chart-o"></i> <span>Review Store</span>
			</li>

		</ul>
		<!-- sidebar menu end-->
	</div>
	</aside> <!--sidebar end-->