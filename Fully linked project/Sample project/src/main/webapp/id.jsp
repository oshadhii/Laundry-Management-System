<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>View Inquires</title>
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<style>
<
style>body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	margin: 0;
	padding: 0;
}

form {
	background-color: #fff;
	max-width: 400px;
	margin: 20px auto;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

input[type="text"], input[type="email"] {
	width: calc(100% - 20px);
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-sizing: border-box;
}

input[type="submit"], input[type="button"] {
	background-color: #21cdd3;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

input[type="submit"]:hover, input[type="button"]:hover {
	background-color: #024b45;
}

.p {
	font-weight: bold;
	margin-top: 20px;
}

.input_box {
	margin-bottom: 20px;
}

.Footercontainer {
	height: 300px;
	max-width: 1170px;
	margin: auto;
}

.Footercontainer .row {
	display: flex;
	flex-wrap: wrap;
}

.Footercontainer ul {
	list-style: none;
}

.footer {
	background-color: #24262b;
	padding: 70px 0;
}

.footer-col {
	width: 25%;
	padding: 0 15px;
}

.footer-col h4 {
	font-size: 18px;
	color: #ffffff;
	text-transform: capitalize;
	margin-bottom: 35px;
	font-weight: 500;
	position: relative;
}

.footer-col h4::before {
	content: '';
	position: absolute;
	left: 0;
	bottom: -10px;
	background-color: #e91e63;
	height: 2px;
	box-sizing: border-box;
	width: 50px;
}

.footer-col ul li:not(:last-child) {
	margin-bottom: 10px;
}

.footer-col ul li a {
	font-size: 16px;
	text-transform: capitalize;
	color: #ffffff;
	text-decoration: none;
	font-weight: 300;
	color: #bbbbbb;
	display: block;
	transition: all 0.3s ease;
}

.footer-col ul li a:hover {
	color: #ffffff;
	padding-left: 8px;
}

.footer-col .social-links a {
	display: inline-block;
	height: 40px;
	width: 40px;
	background-color: rgba(255, 255, 255, 0.2);
	margin: 0 10px 10px 0;
	text-align: center;
	line-height: 40px;
	border-radius: 50%;
	color: #ffffff;
	transition: all 0.5s ease;
}

.footer-col .social-links a:hover {
	color: #24262b;
	background-color: #ffffff;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-body-tertiary"
		data-bs-theme="dark">
		<div class="container-fluid">
			<h1>
				<a class="navbar-brand" href="#"><h1>LAUNDRYMART</h1></a>
			</h1>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02"
				aria-controls="navbarTogglerDemo02" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarTogglerDemo02">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="UserHome.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="Order.jsp">Order</a></li>
					<li class="nav-item"><a class="nav-link" href="#Pricing.jsp">Pricing</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="Services.jsp">Services</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="Contact_us.jsp">Contact Us</a></li>
				</ul>
				<form class="d-flex" role="search">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>
	<form action="Contactview" method="post">
		<p>Enter Your Full Name :</p>
		<div>
			<input type="text" placeholder="Enter your Full Name" name="f_name"
				required class="name">
		</div>
		<br>
		<div>
			<input type="submit" name="submit">
		</div>
	</form>
	<br>
	<br>
	<br>
	<br>
	<br>

	<c:forEach var="cont" items="${contDetails}">

		<c:set var="name" value="${cont.name}" />
		<c:set var="email" value="${cont.email}" />
		<c:set var="mobile" value="${cont.mobile}" />
		<c:set var="msg" value="${cont.message}" />
		<c:set var="id" value="${cont.id}" />

		<form action="delete_servlet" method="post">
			<p class="p">Full Name :</p>
			<div class="input_box">
				<input type="text" name="fu_name" required class="name"
					value="${cont.name}" readonly>
			</div>
			<br>
			<p class="p">Email :</p>
			<div class="input_box">
				<input type="email" name="email" required class="name"
					value="${cont.email}" readonly>
			</div>
			<br>
			<p class="p">Mobile Number :</p>
			<div class="input_box">
				<input type="text" name="mobile" required class="name"
					value="${cont.mobile}" readonly>
			</div>
			<br>
			<p class="p">Message :</p>
			<div class="input_box">
				<input type="text" name="msg" required class="name"
					value="${cont.message}" readonly>
			</div>
			<br>
			<p class="p">ID :</p>
			<div class="input_box">
				<input type="text" name="ud" required class="name"
					value="${cont.id}" readonly>
			</div>
			<br>

			<c:url value="update.jsp" var="update">
				<c:param name="name" value="${name}"></c:param>
				<c:param name="email" value="${email}"></c:param>
				<c:param name="mobile" value="${mobile}"></c:param>
				<c:param name="message" value="${messsage}"></c:param>
			</c:url>

			<a href="${update}"><input type="button" name="Update"
				value="Update"></a> <input type="submit" name="delete"
				value="Delete">
		</form>
	</c:forEach>

	<footer class="footer">
		<div class="Footercontainer">
			<div class="row">
				<div class="footer-col">
					<h4>company</h4>
					<ul>
						<li><a href="#">about us</a></li>
						<li><a href="#">our services</a></li>
						<li><a href="#">privacy policy</a></li>
						<li><a href="#">affiliate program</a></li>
					</ul>
				</div>
				<div class="footer-col">
					<h4>get help</h4>
					<ul>
						<li><a href="#">FAQ</a></li>
						<li><a href="#">shipping</a></li>
						<li><a href="#">returns</a></li>
						<li><a href="#">order status</a></li>
						<li><a href="#">payment options</a></li>
					</ul>
				</div>
				<div class="footer-col">
					<h4>online shop</h4>
					<ul>
						<li><a href="#">watch</a></li>
						<li><a href="#">bag</a></li>
						<li><a href="#">shoes</a></li>
						<li><a href="#">dress</a></li>
					</ul>
				</div>
				<div class="footer-col">
					<h4>follow us</h4>
					<div class="social-links">
						<a href="#"><i class="fab fa-facebook-f"></i></a> <a href="#"><i
							class="fab fa-twitter"></i></a> <a href="#"><i
							class="fab fa-instagram"></i></a> <a href="#"><i
							class="fab fa-linkedin-in"></i></a>
					</div>
				</div>
			</div>
		</div>
	</footer>
	\
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>