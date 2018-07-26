<%@page import="com.ecom.serviceImpl.UserServiceImpl"%>
<%@page import="com.ecom.service.UserService"%>
<%@page import="com.ecom.daoImpl.UserDaoImpl"%>
<%@page import="info.ecom.model.User"%>
<%@page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        
        try{
        if(verifiedUser!=null){
          
        int level;
        
        level = (Integer)session.getAttribute("level");
        
        
        if(level==1){
            UserService uService = new UserServiceImpl();
            List<User> userList = uService.getUserList();
        %>
   
<div class="sidebar-toggle-box">
<jsp:include page="dashheader.jsp"/>
<div id="sidebar" class="nav-collapse ">
<jsp:include page="dashside.jsp"/>
</div>
</div>

</body>

<!--main content start--> <section id="main-content"> <section
		class="wrapper">

	<div class="row">
		<div class="col-lg-9 main-chart">


<table class="table table-striped table-bordered table-hover" style="margin-bottom:0px;">
                                    
                                    <thead>
                                        <tr>
                                            <th>S.N</th>
                                            <th>Name</th>
                                        
                                            <th>Email</th>
                                            <th>Address</th>
                                            <th>Phone No.</th>
                                            <th>Password</th>
                                            <th>Edit</th>
                                            <th>Delete</th>
											
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%
                                            int i=1;
                                            for(User user:uService.getUserList()){
                                        %>
                                        <tr>
                                            <td><%=i++%></td>
                                            <td><%=user.getUserName()%></td>
                                            <td><%=user.getEmail()%></td>
                                            <td><%=user.getAddress()%></td>
                                             <td><%=user.getPhone()%></td>
                                            <td><%=user.getUserPassword()%></td>
                                            <td><a href="UserServlet?userPromote=<%=user.getUserId()%>"><i class="glyphicon glyphicon-pencil"></i></a></td>
                                            <td><a href="UserServlet?userDelete=<%=user.getUserId()%>"><i class="glyphicon glyphicon-trash"></i></a></td>
											
                                        </tr>
                                        <%}%>
                                    </tbody>
                                </table>

		</div>
		<!-- /col-lg-9 END SECTION MIDDLE -->


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
	<%}else{%>
        
        <%}%>
        <%}else{
response.sendRedirect("login.jsp");

}
}catch(Exception e){


}%>
	</body>
	</html>