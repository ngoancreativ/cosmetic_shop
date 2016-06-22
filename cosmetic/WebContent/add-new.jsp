<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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

		<jsp:include page="mainAdmin.jsp"></jsp:include>
		
		<div class="container editupdate" >
			<form class="form-horizontal" action="AddNewProductServlet" method="post">
				<div class="form-group">
					<label class="control-label col-xs-6 "><font size="5">Add new product</font></label>
				</div>
				<br>
				<div class="form-group">
					<label for="inputName" class="control-label col-xs-2">Name</label>
					<div class="col-xs-10">
						<input type="text" class="form-control" id="inputEmail"
							placeholder="Name" name="ProductName">
							
					</div>
				</div>
				<div class="form-group">
					<label for="inputName" class="control-label col-xs-2">Categoryid</label>
					<div class="col-xs-10">
						<input type="text" class="form-control" id="categoryid"
							placeholder="categoryid" name="categoryid">
							
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail" class="control-label col-xs-2">Price</label>
					<div class="col-xs-10">
						<input type="text" class="form-control" id="price"
							placeholder="Price" name="ProductPrice">
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail" class="control-label col-xs-2">Image</label>
					<div class="col-xs-10">
<!-- 						<input type="text" type="file" class="form-control" id="ProductImage" -->
<!-- 							placeholder="Name" name="ProductImage"> -->
							<input type="file" name="ProductImage" size="50"/>
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail" class="control-label col-xs-2">Description</label>
					<div class="col-xs-10">
						<input type="text" class="form-control" id="description"
							placeholder="Name" name="description">
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail" class="control-label col-xs-2">ProductDetail</label>
					<div class="col-xs-10">
						<input type="text" class="form-control" id="description"
							placeholder="Product Detail" name="ProductDetail">
					</div>
				</div>
				<div class="form-group">
					<div class="col-xs-offset-2 col-xs-10">
						 <button type="submit" class="btn btn-primary">Add new</button>
					</div>
				</div>
			</form>
			<!-- /.container-fluid -->

		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->	 
</body>

</html>
