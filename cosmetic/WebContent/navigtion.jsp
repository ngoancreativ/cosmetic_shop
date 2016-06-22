<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Category"%>
<%@page import="java.util.List"%>
<%@page import="model.Product"%>
<%@page import="dao.ProductDAOImpl"%>
<%@page import="java.util.TreeMap"%>
<%@page import="model.Cart"%>
<%@page import="java.util.Map"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


	<%
		Cart cart = (Cart) session.getAttribute("cart");
	if (cart == null) {
		cart = new Cart();
		session.setAttribute("cart", cart);
	}
	TreeMap<Product, Integer> list = cart.getListProduct();
	%>
<div class="container">	
	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.jsp"><img alt="home"
				src="icon/home-icon.png"></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="about.jsp">Giới thiệu</a></li>
				<li><a href="contact.jsp">Liên Hệ</a></li>
				<li><a href="login.jsp">Đăng Nhập</a></li>
				<li><a href="login.jsp">Đăng Ký</a></li>
				<%
					if (session.getAttribute("uname") != null) {
				%>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">Xin chào ! 
								<%=session.getAttribute("uname")%>
								<span class="caret"></span></span></a>
					<ul class="dropdown-menu">
						<li><a href="UserLoginServlet?command=logout">Logout</a></li>
					</ul></li>
				<%
					}
				%>
			</ul>
			
			<ul class="nav navbar-nav navbar-right">
				<form action="SearchServlet" method="post" class="navbar-form navbar-left">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Tên sản phẩm" name="productName">
					</div>
					<button type="submit" class="btn btn-default">Tìm Kiếm</button>
				</form>		
				<li><a href="cart.jsp"><img alt="cart"
						src="icon/shopping-bag-icon.png" class="iconcart"><span class="user-cart-quantity"><%=cart.countItem()%></span></a></li>			
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid --> </nav>
	</div>
