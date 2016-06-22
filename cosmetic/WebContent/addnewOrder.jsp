<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  

<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
    <title>Add new category</title>

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
			<form class="form-horizontal" action="AddNewServlet" method="post">
				<div class="form-group">
					<label class="control-label col-xs-6 "><font size="5">Add new category</font></label>
				</div>
				<br>
				<div class="form-group">
					<label for="inputName" class="control-label col-xs-2">Name</label>
					<div class="col-xs-10">
						<input type="text" class="form-control" id="inputEmail"
							placeholder="Name" name="categoryName">
							
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail" class="control-label col-xs-2">Parent</label>
					<div class="col-xs-10">
						<input type="text" class="form-control" id="price"
							placeholder="Price" name="Parent">
					</div>
				</div>				
				<div class="form-group">
					<div class="col-xs-offset-2 col-xs-10">
						 <button type="submit" class="btn btn-primary">And new</button>
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
