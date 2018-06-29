<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<% response.setHeader("cache-control","no-cache");
response.setHeader("Pragma","no-cache");
response.setDateHeader("Expires",0);%>


<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<!-- HEADER SECTION -->


<!DOCTYPE html>

<html class="no-js">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content="Aviato E-Commerce Website">

<meta name="author" content="Fontaowsome.com">

<title>Aviato - ${title}</title>

<!-- Mobile Specific Meta-->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="${images}/favicon.png" />

<!-- Themefisher Icon font -->
<link rel="stylesheet" href="${css}/Themefisher.css">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- bootstrap.min css -->
<link rel="stylesheet" href="${css}/bootstrap.min.css">

	<!-- passwordscheck.css -->
	<link rel="stylesheet" href="${css}/passwordscheck.css">

<!-- Revolution Slider -->
<link rel="stylesheet" type="text/css" href="${css}/stroke.css">
<link rel="stylesheet" type="text/css" href="${css}/font-awesome.css">

<!-- REVOLUTION STYLE SHEETS -->
<link rel="stylesheet" type="text/css" href="${css}/setting.css">
<link rel="stylesheet" type="text/css" href="${css}/layers.css">
<link rel="stylesheet" type="text/css" href="${css}/navigation.css">

<!-- Main Stylesheet -->
<link rel="stylesheet" href="${css}/Myapp.css">

</head>

<body id="body">

	<!-- Start Top Header Bar -->
	<section class="top-header">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-xs-12 col-sm-4">
					<div class="contact-number">
						<i class="fa fa-phone" aria-hidden="true"></i> <span>0129-
							12323-123123</span>
					</div>
				</div>
				<div class="col-md-4 col-xs-12 col-sm-4">
					<!-- Site Logo -->
					<div class="logo text-center">
						<a href="index.html"> <!-- replace logo here --> <svg
								width="135px" height="29px" viewBox="0 0 155 29" version="1.1"
								xmlns="http://www.w3.org/2000/svg"
								xmlns:xlink="http://www.w3.org/1999/xlink">
						    <g id="Page-1" stroke="none" stroke-width="1" fill="none"
									fill-rule="evenodd" font-size="40"
									font-family="AustinBold, Austin" font-weight="bold">
						        <g id="Group"
									transform="translate(-108.000000, -297.000000)" fill="#000000">
						            <text id="AVIATO">
						                <tspan x="108.94" y="325">AVIATO</tspan>
						            </text>
						        </g>
						    </g>
						</svg>
						</a>
					</div>
				</div>
<div class="col-md-4 col-xs-12 col-sm-4">
	<!-- Cart -->
<ul class="top-menu text-right list-inline">
	<li class="dropdown cart-nav dropdown-slide"><a href="#"
		class="dropdown-toggle" data-toggle="dropdown"
		data-hover="dropdown"><i class="fa fa-shopping-cart"></i>Cart</a>
		<div class="dropdown-menu cart-dropdown">
			<!-- Cart Item -->
		<div class="media">
			<a class="pull-left" href="#"> <img class="media-object"
				src="${images}/shop/cart/cart-1.jpg" alt="image" />
			</a>
			<div class="media-body">
				<h4 class="media-heading">
					<a href="">Ladies Bag</a>
				</h4>
				<div class="cart-price">
					<span>1 x</span> <span>1250.00</span>
				</div>
				<h5>
					<strong>$1200</strong>
				</h5>
			</div>
			<a href="#" class="remove"><i class="fa fa-times"></i></a>
		</div>
		<!-- / Cart Item -->
		<!-- Cart Item -->
		<div class="media">
			<a class="pull-left" href="#"> <img class="media-object"
				src="${images}/shop/cart/cart-2.jpg" alt="image" />
			</a>
			<div class="media-body">
				<h4 class="media-heading">
					<a href="">Ladies Bag</a>
				</h4>
				<div class="cart-price">
					<span>1 x</span> <span>1250.00</span>
				</div>
				<h5>
					<strong>$1200</strong>
				</h5>
			</div>
			<a href="#" class="remove"><i class="fa fa-times"></i></a>
		</div>
		<!-- / Cart Item -->

		<div class="cart-summary">
			<span>Total</span> <span class="total-price">$1799.00</span>
		</div>
		<ul class="text-center cart-buttons">
			<li><a href="/customer/cart/" class="btn btn-small">View
					Cart</a></li>
			<li><a href="" class="btn btn-small btn-solid-border">Checkout</a></li>
		</ul>

	</div></li>
<!-- / Cart -->

			<!-- Search -->
			<li class="dropdown search dropdown-slide"><a href="#"
				class="dropdown-toggle" data-toggle="dropdown"
				data-hover="dropdown"><i class="fa fa-search"
					aria-hidden="true"></i> Search</a>
				<ul class="dropdown-menu search-dropdown">
					<li><form action="post">
							<input type="search" class="form-control"
								placeholder="Search...">
						</form></li>
				</ul></li>
			<!-- / Search -->

						<!-- Languages -->
						<!-- <li class="commonSelect"><select class="form-control">
							<option>EN</option>
							<option>DE</option>
							<option>FR</option>
							<option>ES</option>
					</select>
										</li> -->
						<!-- / Languages -->

					</ul>
					<!-- / .nav .navbar-nav .navbar-right -->
				</div>
			</div>
		</div>
	</section>







	<!-- MAIN NAVIGATION BAR -->





	<!-- collapse nav -->
	<section class="menu">
		<nav class="navbar navigation">
			<div class="container">
				<div class="navbar-header">
					<h2 class="menu-title">Main Menu</h2>
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>

</div>
<!-- / .navbar-header -->

<!-- Navbar Links -->
<div id="navbar" class="navbar-collapse collapse text-center">
	<ul class="nav navbar-nav">

		<!-- Home -->
<li class="dropdown "><a
	href="${pageContext.request.contextPath}/">Home</a></li>
<!-- / Home -->


<!-- Elements -->

<li><a href="${pageContext.request.contextPath}/product/productList/all">Shop</a></li>

	
<!-- / Elements -->


<!-- Pages -->
<c:if test="${pageContext.request.userPrincipal.name != 'codethewebaadi'}">
<li class="dropdown dropdown-slide"><a href="#"
	class="dropdown-toggle" data-toggle="dropdown"
	data-hover="dropdown" data-delay="350" role="button"
	aria-haspopup="true" aria-expanded="false">Pages <span
		class="fa fa-angle-down"></span></a>
	<div class="dropdown-menu">
		<div class="row">

			<!-- Introduction -->
			<div class="col-lg-12 col-md-12 mb-sm-3">
				<ul>
					<li class="dropdown-header">Introduction</li>
					<li role="separator" class="divider"></li>
					<li><a href="${pageContext.request.contextPath}/contact">Contact
							Us</a></li>
					<li><a href="${pageContext.request.contextPath}/about">About
							Us</a></li>
					<li><a
						href="${pageContext.request.contextPath}/coming-soon">Coming
							Soon</a></li>
					<li><a href="${pageContext.request.contextPath}/faq">FAQ</a></li>
				</ul>
			</div>

		</div>
		</div>
		</li>
		</c:if>
		<!-- / .row -->
	
<c:if test="${pageContext.request.userPrincipal.name == 'codethewebaadi'}">

			<li>
			<a href="<c:url value="/admin"/>">Admin Home</a>
			</li>
</c:if>
		<!-- Pages -->

		<li><a
			href="${pageContext.request.contextPath}/userAddress">Profile</a></li>
		<!-- / Pages -->



		<!-- Blog -->
		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<li><a>Welcome:
					${pageContext.request.userPrincipal.name}</a></li>
			<li><a href="<c:url value="/j_spring_security_logout" />">Logout</a></li>

			<c:if
				test="${pageContext.request.userPrincipal.name != 'admin'}">
				<li><a href="<c:url value="/customer/cart" />"><span
						class="glyphicon glyphicon-search"></span></a></li>
			</c:if>

			<c:if
				test="${pageContext.request.userPrincipal.name == 'admin'}">
				<li><a href="<c:url value="/admin" />">Admin</a></li>
			</c:if>

		</c:if>

		<c:if test="${pageContext.request.userPrincipal.name == null}">
			<li><a href="<c:url value="/login" />"><span
					class="glyphicon glyphicon-user"></span>Login</a></li>
			<li><a href="<c:url value="/register" />"><span
					class="glyphicon glyphicon-log-in"></span>SignUp</a></li>
		</c:if>
		</ul>

	</div>
	<!--/.navbar-collapse -->
</div>
<!-- / .container -->
		</nav>
	</section>