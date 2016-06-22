<%@page import="model.Order"%>
<%@page import="dao.OrderDAOImpl"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Order admin</title>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    
	<link href="css/mystyle.css" rel="stylesheet">
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/mystyle.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    
	<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />

  
    <link href="css/plugins/morris.css" rel="stylesheet">
</head>
<body>
	<div id="wrapper">
		<!-- Navigation -->
		<jsp:include page="mainAdmin.jsp"></jsp:include>
		<% OrderDAOImpl orderDAOImpl = new OrderDAOImpl();%>
		<div id="page-wrapper ">

			<div class="container-fluid ">
				<div class="col-sm-12">
					<h1 align="center" style="color: green; margin-top: 70px;">Order admin</h1>
				
					<table>
						<thead>
							<tr>
								<th>Order id</th>
								<th>Address</th>
								<th>Phone</th>
								<th>Total</th>
								<th>Date</th>
								<th>Email</th>
								<th>Option</th>
							</tr>
						</thead>
						
						<c:forEach var="order" items="<%=orderDAOImpl.getListOrder()%>">
								<tr>
									<td>${order.orderid }</td>
									<td>${order.address }</td>
									<td>${order.phone }</td>
									<td>${order.total }</td>
									<td>${order.date }</td>
									<td>${order.email }</td>						
									<td><a
										href="DeleteServlet?product_id=${product.product_id }"
										onclick="return confirm('Do you want to delete?')">Delete</a>
										| <a href="UpdateServlet?product_id=${product.product_id }">Edit</a> 
																			
						
									</td>
								</tr>
							</c:forEach>
						
					</table>

				</div>
			</div>
			<!-- /.container-fluid -->

		</div>
		<!-- /#page-wrapper -->

	</div>

</body>
</html>