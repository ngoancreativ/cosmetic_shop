<%@page import="model.Contactinfor"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Cật nhật liên hệ</title>
	<link href="css/mystyle.css" rel="stylesheet">
	<!-- Bootstrap Core CSS -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/mystyle.css" rel="stylesheet">
	<!-- Custom CSS -->
	<link href="css/sb-admin.css" rel="stylesheet">
	
	<!-- Custom Fonts -->
	<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
		type="text/css">
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
		Contactinfor contactinfor = (Contactinfor) request.getAttribute("contactinfor");
	%>
		<div class="container editupdate" >
			<form class="form-horizontal" action="UpdateServletContact" method="post">>
				<div class="form-group">
				
					<label class="control-label col-xs-6 "><font size="5">Cập nhập liên hệ</font></label>
				</div>
				<br>
				<div class="form-group">
					<label for="inputName" class="control-label col-xs-2">User ID</label>
					<div class="col-xs-10">
					<input type="hidden" class="form-control" name="contactId" value="<%=contactinfor.getContactId()%>">
							
					</div>
				</div>
				<div class="form-group">			
					<label for="inputEmail" class="control-label col-xs-2">Tên</label>
					<div class="col-xs-10">
						<input type="text" name="name" class="form-control" value="<%=contactinfor.getName()%>">
					</div>
				</div>
				<div class="form-group">				
					<label for="inputEmail" class="control-label col-xs-2">Email</label>
					<div class="col-xs-10">
						<input type="text" name="email" class="form-control" value="<%=contactinfor.getEmail()%>">
					</div>
				</div>
						
				<div class="form-group">
					<label for="inputEmail" class="control-label col-xs-2">Số điện thoại</label>
					<div class="col-xs-10">
						<input type="text" name="phone" class="form-control" value="<%=contactinfor.getPhone()%>">
					</div>
				</div>
				<div class="form-group">
					<label for="inputEmail" class="control-label col-xs-2">Lời nhắn</label>
					<div class="col-xs-10">
						<input type="text" name="message" class="form-control" value="<%=contactinfor.getMessage()%>">
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-xs-offset-2 col-xs-10">
						 <button type="submit" class="btn btn-primary">Update</button>
					</div>
				</div>
			</form>
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->
	
</body>

</html>
