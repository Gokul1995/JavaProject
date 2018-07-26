<%@page import="java.util.List"%>
<%@page import="com.ecom.serviceImpl.ProductServiceImpl"%>
<%@page import="com.ecom.service.ProductService"%>
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

<title>MobileHub- you choose we provide </title>
<jsp:include page="dashlinks.jsp"/>
</head>
<body>
<%
        User verifiedUser = (User)session.getAttribute("verifiedUser");
        if(verifiedUser!=null){
            %>
<div class="sidebar-toggle-box">
<jsp:include page="dashheader.jsp"/>
<div id="sidebar" class="nav-collapse ">
<jsp:include page="dashside.jsp"/>
</div>
</div>


<!--main content start--> <section id="main-content"> <section
		class="wrapper">

	<div class="row">
		<div class="col-lg-9 main-chart">
		<table class="table table-striped table-bordered table-hover"  style="margin-bottom:0px;">
                                    <h4 class="mb">
				<i class="fa fa-angle-right"></i> View Handset
			</h4>
                                    <thead>
                                        <tr>
                                            <th>S.N</th>
                                            <th>Brand</th>
                                        
                                            <th>Model</th>
                                            <th>Color</th>
                                            <th>Price</th>
                                            <th>Image</th>
                                            <th>Edit</th>
                                            <th>Delete</th>
											
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            int i=1;
                                        	ProductService productService = new ProductServiceImpl();
                                        	List<ProductDetail> allProduct = productService.allProduct();
                                        	for(ProductDetail pro : allProduct)
                                        	{
                                        %>
                                        <tr>
                                            <td><%=i++%></td>
                                            <td><%=pro.getBrand()%></td>
                                            <td><%=pro.getModel()%></td>
                                            <td><%=pro.getColor()%></td>
                                             <td><%=pro.getPrice()%></td>
                                            <td><img src = "/<%=pro.getImgurl()%>" alt="image" style="width: 304px; height: 202px; "></td>
                                            <td><a href="UserHandler?userPromote=<%=pro.getBrand()%>"><i class="glyphicon glyphicon-pencil"></i></a></td>
                                            <td><a href="UserHandler?userDelete=<%=pro.getBrand()%>"><i class="glyphicon glyphicon-trash"></i></a></td>
											
                                        </tr>
                                        <%}%>
                                    </tbody>
                                </table>
                     </div>





			


		<!-- **********************************************************************************************************************************************************
      RIGHT SIDEBAR CONTENT
      *********************************************************************************************************************************************************** -->

		<div class="col-lg-3 ds">
			<!--COMPLETED ACTIONS DONUTS CHART-->
			<jsp:include page="lsidebar.jsp"/>
		<!-- /col-lg-3 -->
	</div>
	<! --/row --> </section> </section>
	<br>
	<br>
	<br><br>
	<br>
	<div class="text-center" >
	<jsp:include page="footer.jsp"/>
	</div>
	<%}else
		response.sendRedirect("login.jsp");
		%>
	</body>
	</html>