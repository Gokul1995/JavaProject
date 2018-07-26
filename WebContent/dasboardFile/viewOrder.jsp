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
	
	
		<table class="table table-hover">
	                  	  	  <h4><i class="fa fa-angle-right"></i> View Order</h4>
	                  	  	  <hr>
	                              <thead>
	                              <tr>
	                                  <th>OrderId</th>
	                                  <th>User Name</th>
	                                  <th>Order Product</th>
	                                  <th>Address</th>
	                                  <th>Contact</th>
	                                  <th>Status</th>
	                              </tr>
	                              </thead>
	                              <tbody>
	                              <tr>
	                                  <td>1</td>
	                                  <td>Gokul</td>
	                                  <td>MI,Redmi,Silver</td>
	                                  <td>Koteshwor</td>
	                                  <td>9848603663</td>
	                                  <td>pending</td>
	                              </tr>
	                              <tr>
	                                  <td>2</td>
	                                  <td>Pratik</td>
	                                  <td>Samsung,Note5,White</td>
	                                  <td>Bimsengola</td>
	                                  <td>11122563</td>
	                                   <td>pending</td>
	                              </tr>
	                              <tr>
	                                  <td>3</td>
	                                  <td>Kausal</td>
	                                  <td>Samsung, Galaxy S3, White</td>
	                                  <td>Shantinagar</td>
	                                  <td>1234561234</td>
	                                   <td>pending</td>
	                              </tr>
	                              </tbody>
	                          </table>
	
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
	<%}else{
		response.sendRedirect("login.jsp");	
	}%>
	</body>
</html>