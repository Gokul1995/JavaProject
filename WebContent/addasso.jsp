<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="info.ecom.model.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword"
	content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

<title>MobileHub- you choose we provide</title>
<jsp:include page="dashlinks.jsp" />
</head>
<body>
<%
        User verifiedUser = (User)session.getAttribute("verifiedUser");
        if(verifiedUser!=null){
            %>
	<div class="sidebar-toggle-box">
		<jsp:include page="dashheader.jsp" />
		<div id="sidebar" class="nav-collapse ">
			<jsp:include page="dashside.jsp" />
		</div>
	</div>

</body>

<!--main content start-->
<section id="main-content"> <section class="wrapper">

<div class="row">
	<div class="col-lg-9 main-chart">

		<div class="form-panel">
			<h4 class="mb">
				<i class="fa fa-angle-right"></i> Add Detail for the Product
			</h4>
			<form class="form-inline" action="AddHandset" enctype="multipart/form-data" role="form" method="post">

				<div class="form-group">
					<select class="form-control" name="type"><option>Choose Accessories</option>
						<option value="headphone">Headphone</option>
						<option value="earphone">Earphone</option>
						<option value="charger" >Charger</option>
						<option value="battery">Battery</option>
						<option value="other">Other</option>
						</select>

				</div>
				<div class="form-group">

					<input type="text" class="form-control" id="Model" name="model"
						placeholder="Enter Model">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" name="color"
						id="color" placeholder="Enter Color">
				</div>
				<div class="form-group">
					<input type="text" class="form-control" name="price"
						id="price" placeholder="Enter Price">
				</div>
				<br> <br> <br>	
				<div class="form-group">
					<input type="text" class="form-control"
						id="quantity" name="quantity" placeholder="Enter Quantity">
				</div>	
				
				<input type="file" class="form-control" name="file" multiple>
					
		
				<button type="submit" class="btn btn-theme" name="addAsso">Submit</button>
			</form>
		</div>
		<!-- /form-panel -->

	</div>
	<!-- /col-lg-9 END SECTION MIDDLE -->


	<!-- **********************************************************************************************************************************************************
      RIGHT SIDEBAR CONTENT
      *********************************************************************************************************************************************************** -->

	<div class="col-lg-3 ds">
		<!--COMPLETED ACTIONS DONUTS CHART-->
		<jsp:include page="lsidebar.jsp" />
		<!-- /col-lg-3 -->
	</div>
	<! --/row -->
</section> </section>
<br>
<br>
<br>
<br>
<br>
<div class="text-center">
	<jsp:include page="footer.jsp" />
	</div>
	<%}else
		response.sendRedirect("login.jsp");
		%>
	</body>
</html>