<%@ page language="java" contentType="text/html; charset=UTF-8"
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	
	<title>User login</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<link href="css/prettyPhoto.css" rel="stylesheet">
	<link href="css/price-range.css" rel="stylesheet">
	<link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/mystyle.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/price-range.js"></script>
	<script src="js/jquery.prettyPhoto.js"></script>
	<script src="js/main.js"></script>
	
	
	<link rel="stylesheet" href="css/bootstrap-theme.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	
	
	<link rel="stylesheet" href="css/bootstrap-theme.css.map">
	<link rel="stylesheet" href="css/bootstrap.css.map">
	<script src="js/jquery-1.11.3.min.js"></script>
	
	
	<link rel="stylesheet" href="css/bootstrap.css.map">
	<script src="js/jquery-1.11.3.min.js"></script>
</head>
<body>
	<div class="container">
		<%
		String username_err = "", password_err = "", username = "", err = ""; 
		
		if (request.getAttribute("username_err") != null) {
			username_err = (String) request.getAttribute("username_err");
		}
		
		if (request.getAttribute("password_err") != null) {
			password_err = (String) request.getAttribute("password_err");
		}
		if (request.getAttribute("username") != null) {
			username = (String) request.getAttribute("username");
		}
		if (request.getAttribute("err") != null) {
			err = (String) request.getAttribute("err");
		}
	%>
		<jsp:include page="slide.jsp"></jsp:include>
		<jsp:include page="navigtion.jsp"></jsp:include>
		<section id="form"><!--form-->
		<div class="container content">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form">
						<!--login form-->
						<h2>Đăng nhập hệ thống</h2>
						<form action="UserLoginServlet" method="post">
							<p style="color: red"><%=err%></p>
							<input type="email" placeholder="Nhập địa chỉ Email ..."
								name="username" />
							<p style="color: red"><%=err%></p>
							<input type="role" placeholder="User = 1, Admin = 0" name="role" />
							<input type="password" placeholder="Mật khẩu ..." name="password" />
							<button type="submit" class="btn btn-default">Đăng nhập</button>
						</form>
					</div>
					<!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or">OR</h2>
				</div>
				<div class="col-sm-4">
					<div class="signup-form">
						<!--sign up form-->
						<h2>Tạo tài khoản mới !</h2>
						<form action="UserRegisterServlet" method="post">
							<p style="color: red"><%=username_err%></p>
							<input type="email" placeholder="Email Address" name="username" />
							<p style="color: red"><%=password_err%></p>
							<input type="password" placeholder="Password" name="password" />
							<button type="submit" class="btn btn-default">Đăng ký</button>
						</form>
					</div>
					<!--/sign up form-->
				</div>
			</div>
		</div>
		</section>
	</div>
	<!--/form-->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>