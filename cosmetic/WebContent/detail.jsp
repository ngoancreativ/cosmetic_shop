<%@page import="model.Product"%>
<%@page import="java.util.List"%>
<%@page import="dao.ProductDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<%
		ProductDAOImpl productDAO = new ProductDAOImpl();
		String product_id = request.getParameter("product_id");
		int msp = Integer.parseInt(product_id);
		List<Product> products=productDAO.getListProductSlide();
	%>
	
	<jsp:include page="slide.jsp"></jsp:include>
	<jsp:include page="navigtion.jsp"></jsp:include>
	<section>
	<div class="container content">
		<div class="row">
			<jsp:include page="category.jsp"></jsp:include>
			<div class="col-sm-9 padding-right">
				<div class="product-details">
					<!--product-details-->
					<div class="col-sm-5">
						<div class="view-product">
							<img src="<%=productDAO.getProduct(msp).getImage()%>" />
						</div>

					</div>
					<div class="col-sm-7">
						<div class="product-information">
							<!--/product-information-->
							<img src="image/product-details/new.jpg" class="newarrival"
								alt="" />
							
							<h2><%=productDAO.getProduct(msp).getName()%></h2>
							<h2><%=productDAO.getProduct(msp).getDescription()%></h2>
							<span> <span><%=productDAO.getProduct(msp).getPrice()%>
									VNĐ</span>
						<%
							if (session.getAttribute("uname") != null) {
						%>
								
								<a href="CartServlet?command=insertItem&product_id=<%=productDAO.getProduct(msp).getProduct_id()%>&cartID=<%=System.currentTimeMillis()%>"><button type="button" class="btn btn-fefault cart">
									<i class="fa fa-shopping-cart"></i> Add cart
								</button></a>
								
						<%
							}
						%>
							</span>
							<div id="fb-root"></div>
							<script>
								(function(d, s, id) {
									var js, fjs = d.getElementsByTagName(s)[0];
									if (d.getElementById(id))
										return;
									js = d.createElement(s);
									js.id = id;
									js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.5&appId=1622713357947453";
									fjs.parentNode.insertBefore(js, fjs);
								}(document, 'script', 'facebook-jssdk'));
							</script>
						</div>
						<!--/product-information-->
					</div>
				</div>
				<!--/product-details-->

				<div class="category-tab shop-details-tab">
					<!--category-tab-->
					<div class="col-sm-12">
						<ul class="nav nav-tabs">
							<li><a href="#details" data-toggle="tab">Chi tiết</a></li>

						</ul>
					</div>
					<div class="tab-content">
						<div class="tab-pane fade" id="details">
							<div class="col-sm-12">
								<p style="text-align: center;">
									<span style="font-size: 22px;"><strong><%=productDAO.getProduct(msp).getName()%></strong></span>
								</p>

								<div class="view-productdetail" align="center">
									<img src="<%=productDAO.getProduct(msp).getImage()%>" />
								</div>
								<div class="detail">
									<p style="font-size: 18px">
										<%=productDAO.getProduct(msp).getProductDetail()%>
									</p >

									
								</div>

							</div>
						</div>
					</div>
				</div>
				<!--/category-tab-->

				<div class="recommended_items">
					<!--recommended_items-->
					<h2 class="title text-center">Sản Phẩm Mới</h2>

					<div id="recommended-item-carousel" class="carousel slide"
						data-ride="carousel">
						<div class="carousel-inner">
							<div class="item active">
							<c:forEach items="<%=products%>" var="product" begin="0" end="2">
								<div class="col-sm-4">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${product.image}" alt="" />
												<h2>${product.price}</h2>
												<p>${product.name}</p>
												<%
													if (session.getAttribute("uname") != null) {
												%>
												<button type="button" class="btn btn-default add-to-cart">
													<i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng
												</button>
												<%
													}
												%>
											</div>
											<div class="choose">
													<ul class="nav nav-pills nav-justified">
														<li><a
															href="detail.jsp?product_id=${product.product_id}"><i
																class="fa fa-plus-square"></i>Chi tiết sản phẩm</a></li>
													</ul>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
							
							</div>
							<div class="item">
								<c:forEach items="<%=products%>" var="product" begin="3" end="5">
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="${product.image}" alt="" />
													<h2>${product.price}</h2>
													<p>${product.name}</p>
													<%
													if (session.getAttribute("uname") != null) {
												%>
													<button type="button" class="btn btn-default add-to-cart">
														<i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng
													</button>
													<%
														}
													%>
												</div>
												<div class="choose">
													<ul class="nav nav-pills nav-justified">
														<li><a
															href="detail.jsp?product_id=${product.product_id}"><i
																class="fa fa-plus-square"></i>Chi tiết sản phẩm</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
							<div class="item">
								<c:forEach items="<%=products%>" var="product" begin="6" end="9">
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="${product.image}" alt="" />
													<h2>${product.price}</h2>
													<p>${product.name}</p>
													<%
													if (session.getAttribute("uname") != null) {
												%>
													<button type="button" class="btn btn-default add-to-cart">
														<i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng
													</button>
													<%
														}
													%>
												</div>
												<div class="choose">
													<ul class="nav nav-pills nav-justified">
														<li><a
															href="detail.jsp?product_id=${product.product_id}"><i
																class="fa fa-plus-square"></i>Chi tiết sản phẩm</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<a class="left recommended-item-control"
							href="#recommended-item-carousel" data-slide="prev"> <i
							class="fa fa-angle-left"></i>
						</a> <a class="right recommended-item-control"
							href="#recommended-item-carousel" data-slide="next"> <i
							class="fa fa-angle-right"></i>
						</a>
					
					</div>
				</div>
				<!--/recommended_items-->

			</div>
</div>
		</div>
		
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
	
	

</body>
</html>