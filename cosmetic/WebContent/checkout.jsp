<%@page import="model.Order"%>
<%@page import="model.User"%>
<%@page import="dao.UserDAOImpl"%>
<%@page import="dao.UserDAO"%>
<%@page import="java.util.Map"%>
<%@page import="model.Product"%>
<%@page import="java.util.TreeMap"%>
<%@page import="model.Cart"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/price-range.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/price-range.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/main.js"></script>
</head>
<body>
	
	<%
		Cart cart = (Cart) session.getAttribute("cart");
		if (cart == null) {
			cart = new Cart();
			session.setAttribute("cart", cart);
		}
		TreeMap<Product, Integer> list = cart.getListProduct();
	%>
	
	<div class="container">
		<jsp:include page="slide.jsp"></jsp:include>
		<jsp:include page="navigtion.jsp"></jsp:include>
		<div class="col-sm-4">
			<form class="form" action="CheckOutServlet" method="post">
				
				<input type="hidden" name="cardID" value="<%=cart.getCartID()%>">			
				<div class="form-group">
					<input type="hidden" class="form-control" id="total" name="total"
						value="<%=cart.countItem()%>">
				</div>

				<div class="form-group">
					<label for="address">Địa chỉ:</label> <input type="text"
						class="form-control" id="address" name="address">
				</div>
				<div class="form-group">
					<label for="phone">Số điện thoại</label> <input type="text"
						class="form-control" id="phone" name="phone">
				</div>
				<div class="form-group">
					<label for="email">Email</label> <input type="email"
						class="form-control" id="email" name="email">
				</div>
				<%
					for (Map.Entry<Product, Integer> entry : list.entrySet()) {
				%>
				<input class="form-control" type="hidden" name="productname"
					value="<%=entry.getKey().getName()%>"> 
				<input
					class="form-control" type="hidden" name="price"
					value="<%=entry.getKey().getPrice()%>">
				<%
					}
				%>
				<input
					class="form-control" type="hidden" name="totalMoney"
					value="<%=1400 + cart.total()%>"> 
				<button type="submit" class="btn btn-default btncheck_out">Xac
					nhan thanh toan</button>
			</form>

		</div>
		<div id="cart_items">
		
			<div class="container">
			
				<div class="table-responsive cart_info">
					<table class="table">
						<thead>
							<tr class="cart_menu">
								<td class="image">Hinh ảnh</td>
								<td class="name">Tên sản phẩm</td>
								<td class="Money">Số Tiền</td>
								<td class="quantity">Số lượng</td>
								<td class="total">Tổng tiền</td>
								<td class="Delete">Xóa</td>
							</tr>
						</thead>
						<tbody>
							<%
								for (Map.Entry<Product, Integer> entry : list.entrySet()) {
							%>
							<tr>
								<td class="cart_product"><a
									href="detail.jsp?product_id=<%=entry.getKey().getProduct_id()%>"><img
										src="<%=entry.getKey().getImage()%>" alt="" width="120"
										hight="150"></a></td>
								<td class="cart_description">
									<h4>
										<a
											href="detail.jsp?product_id=<%=entry.getKey().getProduct_id()%>"><%=entry.getKey().getName()%></a>
									</h4>
									<p>
										Product id:
										<%=entry.getKey().getProduct_id()%></p>
								</td>
								<td class="cart_price">
									<p><%=entry.getKey().getPrice()%></p>
								</td>
								<td class="cart_quantity">
									<div class="cart_quantity_button">
										<a class="cart_quantity_up"
											href="CartServlet?command=addItem&product_id=<%=entry.getKey().getProduct_id()%>&cartID=<%=System.currentTimeMillis()%>">
											+ </a> <input class="cart_quantity_input" type="text"
											name="quantity" value="<%=entry.getValue()%>"
											autocomplete="off" size="2" disabled="disabled"> <a
											class="cart_quantity_down"
											href="CartServlet?command=subItem&product_id=<%=entry.getKey().getProduct_id()%>&cartID=<%=System.currentTimeMillis()%>">
											- </a>
									</div>
								</td>
								<td class="cart_total">
									<p class="cart_total_price"><%=entry.getValue() * entry.getKey().getPrice()%></p>
								</td>
								<td class="cart_delete"><a class="cart_quantity_delete"
									href="CartServlet?command=removeItem&product_id=<%=entry.getKey().getProduct_id()%>&cartID=<%=System.currentTimeMillis()%>"><i
										class="fa fa-times"></i></a></td>
							</tr>

							<%
								}
							%>
							
							<tr>
								<td><a class="btn btn-default update" href="index.jsp">Continue
										shopping</a>
								</td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
				
			
			</div>
					
		</div>
		
		<!--/#cart_items-->
		<jsp:include page="footer.jsp"></jsp:include>
		
	</div>
</body>
</html>