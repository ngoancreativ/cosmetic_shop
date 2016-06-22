<%@page import="dao.OrderDetailDAOImpl"%>
<%@page import="model.OrderDetail"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Order detail</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Order detail admin</title>
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
		<% OrderDetailDAOImpl orderDetailDAO = new OrderDetailDAOImpl();%>
		<div id="page-wrapper ">

			<div class="container-fluid ">
				<div class="col-sm-12">
					<h1 align="center" style="color: green; margin-top: 70px;">Order detail admin</h1>
				
					<table>
						<thead>
							<tr>
								<th>orderDetail_id</th>
								<th>orderid</th>
								<th>price</th>
								<th>product_id</th>
								<th>quantity</th>
								<th>name</th>
								<th>Option</th>
							</tr>
						</thead>
						
						<c:forEach var="orderdetail" items="<%=orderDetailDAO.getListOrderDetail()%>">
								<tr>
									<td>${orderdetail.orderDetail_id }</td>
									<td>${orderdetail.orderid }</td>
									<td>${orderdetail.orderid }</td>
									<td>${orderdetail.product_id }</td>
									<td>${orderdetail.quantity }</td>
									<td>${orderdetail.name }</td>						
									<td><a
										href="#=${orderdetail.orderDetail_id }"
										onclick="return confirm('Do you want to delete?')">Delete</a>
										| <a href="#=${product.product_id }">Edit</a> 

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