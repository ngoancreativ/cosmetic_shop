<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<title>Contact</title>
</head>
<body>
	<div class="container">
	<jsp:include page="slide.jsp"></jsp:include>
	<jsp:include page="navigtion.jsp"></jsp:include>
	<div class="container content">
		<div class="row">
			<div class="box">
				<div class="col-lg-12">
					<hr>
					<h2 class="intro-text text-center">
						<strong>Cosmetic Shop</strong>
					</h2>
					<hr>
				</div>
				<div class="col-lg-12 text-center">
					<p>
						Phone: <strong>0917 330 649</strong>
					</p>
					<p>
						Email: <strong><a href="mailto:vn2602.kt@gmail.com">vn2602.kt@gmail.com</a></strong>
					</p>
					<p>
						Address: <strong>383 YEN BAI, QUAN HAI CHAU, TP. DA NANG <br>
						</strong>
					</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>

		<div class="row">
			<div class="box">
				<div class="col-lg-12">
					<hr>
					<h2 class="intro-text text-center">
						Contact <strong>form</strong>
					</h2>
					<hr>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
						Fugiat, vitae, distinctio, possimus repudiandae cupiditate ipsum
						excepturi dicta neque eaque voluptates tempora veniam esse earum
						sapiente optio deleniti consequuntur eos voluptatem.</p>
					<form role="form" action="AddNewContactSevlet" method="post">
						<div class="row">
							<div class="form-group col-lg-4">
								<label>Name</label> <input type="text" class="form-control" name="Name">
							</div>
							<div class="form-group col-lg-4">
								<label>Email Address</label> <input type="email"
									name="Email" class="form-control">
							</div>
							<div class="form-group col-lg-4">
								<label>Phone Number</label> <input type="tel"
									name="Phone" class="form-control">
							</div>
							<div class="clearfix"></div>
							<div class="form-group col-lg-12">
								<label>Message</label>
								<textarea name="Message" class="form-control" rows="6"></textarea>
							</div>
							<div class="form-group col-lg-12">
								<input type="hidden" name="save" value="contact">
								<button type="submit" class="btn btn-default">Save</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		</div>
	<div id="footer"><jsp:include page="footer.jsp"></jsp:include></div>

	</div>

</body>
</html>