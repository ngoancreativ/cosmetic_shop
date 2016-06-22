<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-ex1-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="product_admin.jsp">SB Admin</a>
		</div>
		<!-- Top Menu Items -->
		<ul class="nav navbar-right top-nav">

			<li class="dropdown">
				<%
					if (session.getAttribute("uname") != null) {
				%> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
					class="fa fa-user"></i> <%=session.getAttribute("uname")%><b
					class="caret"></b></a> <%
					}
				%>
				<ul class="dropdown-menu">
					<li><a href="index.jsp"><i class="fa fa-fw fa-user"></i>Cosmetic
							shop</a></li>

					<li class="divider"></li>
					<li><a href="UserLoginServlet?command=logout"><i
							class="fa fa-fw fa-power-off"></i> Log Out</a></li>
				</ul>
			</li>
		</ul>
		<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav side-nav">
				<li><a href="product_admin.jsp"><i
						class="fa fa-fw fa-dashboard"></i>Product</a></li>
				<li><a href="user_admin.jsp"><i
						class="fa fa-fw fa-bar-chart-o"></i>User</a></li>
				<li><a href="orderAdmin.jsp"><i
						class="fa fa-fw fa-bar-chart-o"></i>Order</a></li>
				<li><a href="orderDetailAdmin.jsp"><i
						class="fa fa-fw fa-bar-chart-o"></i>Order Detail</a></li>
				<li><a href="categoryAdmin.jsp"><i
						class="fa fa-fw fa-bar-chart-o"></i>Category</a></li>
				<li><a href="contactAdmin.jsp"><i
						class="fa fa-fw fa-bar-chart-o"></i>Contact</a></li>

			</ul>
		</div>
		<!-- /.navbar-collapse --> </nav>
		
	<script src="js/jquery.js"></script>
	<script src="js/jquery.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="js/plugins/morris/raphael.min.js"></script>
    <script src="js/plugins/morris/morris.min.js"></script>
    <script src="js/plugins/morris/morris-data.js"></script>
    
    <script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery-throttle-debounce/1.1/jquery.ba-throttle-debounce.min.js"></script>
	<script src="js/jquery.stickyheader.js"></script>

	
	
    
    
    
    
    
    
    
    
    