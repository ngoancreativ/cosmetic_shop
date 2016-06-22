<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  

<html lang="en">
<head>

    
    
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>SB Admin - Bootstrap Admin Template</title>

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

	<%
		Product product = (Product) request.getAttribute("product");
	%>

		<div class="container editupdate" >
			<form class="form-horizontal" action="UpdateServlet" method="post">>
				<div class="form-group">
				
					<label class="control-label col-xs-6 "><font size="5">Update product</font></label>
				</div>
				<br>
				<div class="form-group">
					
					
					<input type="hidden" name="productId" value="<%= product.getProduct_id() %>">

					
				</div>
				<div class="form-group">			
					<label for="inputEmail" class="control-label col-xs-2">Category Id</label>
					<div class="col-xs-10">
						<input type="text" name="category_id" class="form-control" value="<%=product.getCategory_id()%>">
					</div>
				</div>
				<div class="form-group">			
					<label for="inputEmail" class="control-label col-xs-2">Name</label>
					<div class="col-xs-10">
						<input type="text" name="productName" class="form-control" value="<%=product.getName()%>">
					</div>
				</div>
				<div class="form-group">				
					<label for="inputEmail" class="control-label col-xs-2">Price</label>
					<div class="col-xs-10">
						<input type="text" name="productPrice" class="form-control" value="<%=product.getPrice()%>">
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail" class="control-label col-xs-2">Image</label>
					<div class="col-xs-10">
						<input type="text" name="productImage" class="form-control" value="<%=product.getImage()%>">
					</div>
				</div>			
				<div class="form-group">
					<label for="inputEmail" class="control-label col-xs-2">Description</label>
					<div class="col-xs-10">
						<input type="text" name="description" class="form-control" value="<%=product.getDescription()%>">
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail" class="control-label col-xs-2">Product detail</label>
					<div class="col-xs-10">
						<input type="text" name="ProductDetail" class="form-control" value="<%=product.getProductDetail()%>">
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-offset-2 col-xs-10">
						 <button type="submit" class="btn btn-primary">Update</button>
					</div>
				</div>
			</form>

		

		</div>
		

	</div>
	<!-- /#wrapper -->
	
	
</body>

</html>