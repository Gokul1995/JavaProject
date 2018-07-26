<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="info.ecom.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<style>
input[type=text] {
	width: 130px;
	box-sizing: border-box;
	border: 2px solid #ccc;
	border-radius: 4px;
	font-size: 16px;
	background-color: white;
	background-image: url('searchicon.png');
	background-position: 10px 10px;
	background-repeat: no-repeat;
	padding: 12px 20px 12px 40px;
	-webkit-transition: width 0.4s ease-in-out;
	transition: width 0.4s ease-in-out;
}

input[type=text]:focus {
	width: 100%;
}
</style>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Dashboard">
<meta name="keyword"
	content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

<title>MobileHub- Repository</title>
<jsp:include page="dashlinks.jsp" />
</head>
<body>
	<%
		User verifiedUser = (User) session.getAttribute("verifiedUser");
		if (verifiedUser != null) {
	%>
	<div class="sidebar-toggle-box">
		<jsp:include page="dashheader.jsp" />
		<div id="sidebar" class="nav-collapse ">
			<jsp:include page="dashside.jsp" />
		</div>
	</div>


	<!--main content start-->
	<section id="main-content"> <section class="wrapper">

	<div class="row">
		<div class="col-lg-9 main-chart">
			<p>
				Search from the repository
			</p>
			<form>
				<input type="text" name="search" placeholder="Search..">
			</form>



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
	<%
		} else
			response.sendRedirect("login.jsp");
	%>
</body>
</html>