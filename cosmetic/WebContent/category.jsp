<%@ page language="java" contentType="text/html; charset=UTF-8"
   %>
<%@page import="model.Category"%>
<%@page import="dao.CategoryDAOImpl"%>
	<%
		CategoryDAOImpl categoryDAO = new CategoryDAOImpl();
	%>

	<div class="col-md-3">

		<div class="left-sidebar">
			<h2>Danh Mục</h2>
			<div class="panel-group category-products" id="accordian">
				<!--category-productsr-->
				<%
					for (Category list : categoryDAO.getCategoryByParent()) {
				%>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a> <span class="badge pull-right"></span> <%=list.getName()%>
							</a>
						</h4>
					</div>
					<%
						if (categoryDAO.getCategoryByChildren(list.getCategory_id())
									.size() > 0) {
					%>
					<div class="panel-body">
						<ul>
							<%
								for (Category c2 : categoryDAO.getCategoryByChildren(list
												.getCategory_id())) {
							%>
							<li><a href="index.jsp?category_id=<%=c2.getCategory_id()%>"><%=c2.getName()%> </a></li>
							<%
								}
							%>
						</ul>
					</div>
					<%
						}
					%>
				</div>
				<%
					}
				%>
			</div>
			<!--/category-products-->

			<div class="shipping text-center">
				<!--shipping-->
				<img src="image/home/shipping.jpg" alt="" />
			</div>
			<!--/shipping-->

		</div>
	</div>

