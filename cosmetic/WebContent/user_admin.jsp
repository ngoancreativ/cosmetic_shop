<%@page import="model.User"%>
<%@page import="dao.UserDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    

    <title>User Admin</title>
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
		<% UserDAOImpl userDAO = new UserDAOImpl();%>
		<div id="page-wrapper ">

			<div class="container-fluid ">

				<div class="form-group">
					<div class="col-xs-offset-2 col-xs-10">
						<a href="addnewUser.jsp"><button type="submit"
								class="btn btn-primary addnew">And new</button></a>
						<h1 align="center" style="color: green">User Admin</h1>
						
					</div>
				</div>
				<div class="col-sm-12">
					<table>
						<thead>
							<tr>
								<th>User ID</th>
								<th>User name</th>
								<th>Password</th>
								<th>Role</th>
								<th>Option</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="user" items="<%=userDAO.getListUser()%>">
								<tr>
									<td>${user.user_id }</td>
									<td>${user.username }</td>
									<td>${user.password }</td>
									<td>${user.role }</td>
									<td><a
										href="DeleteServletUser?user_id=${user.user_id }"
										onclick="return confirm('Do you want to delete?')">Delete</a>
										| <a href="UpdateServletUser?user_id=${user.user_id}">Edit</a>
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
