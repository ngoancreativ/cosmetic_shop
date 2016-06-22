<%@page import="model.Category"%>
<%@page import="dao.CategoryDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Category admin</title>
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
		<% CategoryDAOImpl categoryDAO = new CategoryDAOImpl();%>
		<div id="page-wrapper ">

			<div class="container-fluid ">
				
				<div class="form-group">
					<div class="col-xs-offset-2 col-xs-10">
						<a href="addnewCategory.jsp"><button type="submit"
								class="btn btn-primary addnew">Add new</button></a>
						<h1 align="center" style="color: green">Category admin page</h1>
								
					</div>
				</div>
				<div class="col-sm-12">
					<table>
						<thead>
							<tr>
								<th>Category_id</th>
								<th>Name</th>
								<th>Parent</th>
								
								<th>Option</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="category" items="<%=categoryDAO.getListCategory()%>">
								<tr>
									<td>${category.category_id}</td>
									<td>${category.name }</td>
									<td>${category.parent }</td>										
									<td><a
										href="DeleteServlet?product_id=${product.product_id }"
										onclick="return confirm('Do you want to delete?')">Delete</a>
										| <a href="UpdateCategoryServlet?category_id=${category.category_id }">Edit</a>
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
