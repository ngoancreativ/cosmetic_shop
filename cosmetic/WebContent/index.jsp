<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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


<title>Cosmetic Shop</title>
</head>
<body class="body">
<div class="container main">		
		<div id="slide"><jsp:include page="slide.jsp"></jsp:include></div>
		<div id="header-link"><jsp:include page="navigtion.jsp"></jsp:include></div>
		<div class="container content">
		<div id="menu"><jsp:include page="category.jsp"></jsp:include></div>
		<div id="content"><jsp:include page="product.jsp"></jsp:include></div>
		</div>
		<div id="footer"><jsp:include page="footer.jsp"></jsp:include></div>
		
</div>

</body>
</html>