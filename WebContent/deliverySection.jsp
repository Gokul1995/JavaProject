<%@page import="java.util.List"%>
<%@page import="com.ecom.serviceImpl.AdminOrderServiceImpl"%>
<%@page import="com.ecom.service.AdminOrderService"%>
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
	                  	  	  <h4><i class="fa fa-angle-right"></i> Delivery Section</h4>
	                  	  	  <hr>
	                              <thead>
	                              <tr>
	                                  <th>OrderId</th>
	                                  <th>UserId</th>
	                                  <th>Delivery Date</th>
	                                  <th>Item</th>
	                                  <th>Contact</th>
	                                  <th>Status</th>
	                              </tr>
	                              </thead>
	                              <tbody>
	                              <tr>
	                                  <td>1</td>
	                                  <td>1</td>
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
	                          
	                           <div class="row mt">
	                           
                  <div class="col-md-12">
                      <div class="content-panel">
                          <table class="table table-striped table-advance table-hover">
	                  	  	  <h4><i class="fa fa-angle-right"></i> User Order</h4>
	                  	  	  <hr>
                              <thead>
                              <tr>
                                  <th><i class="fa fa-bullhorn"></i> S.N</th>
                                  <th class="hidden-phone"><i class="fa fa-question-circle"></i> Order ID</th>
                                  <th><i class="fa fa-bookmark"></i> UserName</th>
                                  <th>Brand</th>
                                  <th>Model</th>
                                  <th>Price</th>
                                  <th>Address</th>
                                  <th>Contact No.</th>
<!--                                   <th><i class=" fa fa-edit"></i> Status</th> -->
                                  <th>Review</th>
                              </tr>
                              </thead>
                              <% 
	                          	int i;
	                          	AdminOrderService os = new AdminOrderServiceImpl();
	                          	List<OrderDetail> orderDetail = os.displayDelivery();
	                          
	                          
                               for(OrderDetail order : orderDetail){%>
                              <tbody>
                              <tr>
                                  <td><a href="basic_table.html#"><%= "id"%></a></td> 
                                  <td class="hidden-phone"><%=order.getOrderId() %></td>
                                  <td><%=order.getUserName() %> </td>
                                  <td><%=order.getBrand() %></td>
                                  <td><%=order.getModel() %></td>
                                  <td><%=order.getPrice() %></td>
                                  <td><%=order.getUserAddress() %></td>
                                  <td><%=order.getUserContact() %>
<!--                                   <td><span class="label label-info label-mini">Due</span></td> -->
                                  <td><a href="AdminOrderController?deliveryDone=<%=order.getOrderId()%>" style="background-color: white">
                                      <button class="btn btn-success btn-xs">Deliver<i class="fa fa-check"></i></a></button>
                                      <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button> 
                                  </td>
                              </tr>
                              
                              </tbody>
                              <%} %>
                          </table>
                      </div><!-- /content-panel -->
                  </div><!-- /col-md-12 -->
              </div><!-- /row -->
	
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