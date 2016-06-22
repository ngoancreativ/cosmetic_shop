<%@ page language="java" contentType="text/html; charset=UTF-8"
    %>
<%@page import="model.Product"%>
<%@page import="dao.ProductDAOImpl"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>Product admin</title>
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
		<% ProductDAOImpl productDAO = new ProductDAOImpl();%>
		<div id="page-wrapper ">

			<div class="container-fluid ">

				<div class="form-group">
					<div class="col-xs-offset-2 col-xs-10">
						<a href="add-new.jsp"><button type="submit"
								class="btn btn-primary addnew">Add new</button></a>
						<h1 align="center" style="color: green">Product admin</h1>
						
					</div>
				</div>
				<div class="col-sm-12">
					<table>
						<thead>
							<tr>
								<th>Product ID</th>
								<th>Category_id</th>
								<th>Product Name</th>
								<th>Price</th>
								<th>Image</th>
								<th>Description</th>
								<th>Product detail</th>
								<th>Option</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="product" items="<%=productDAO.getListProduct()%>">
								<tr>
									<td>${product.product_id }</td>
									<td>${product.category_id}</td>
									<td>${product.name }</td>
									<td>${product.price }</td>
									<td><img src="${product.image}" alt="" width="50"
										hight="60"></td>
									<td>${product.description }</td>
									<td>${product.productDetail }</td>
									<td><a
										href="DeleteServlet?product_id=${product.product_id }"
										onclick="return confirm('Do you want to delete?')">Delete</a>
										| <a href="UpdateServlet?product_id=${product.product_id }">Edit</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>

					</table>

				</div>
			</div>
			<!-- /.container-fluid -->

		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->
	
</body>

</html>
