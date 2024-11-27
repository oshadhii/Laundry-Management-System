<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Details</title>
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
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	margin: 0;
	padding: 0;
}

form {
	margin-bottom: 20px;
}

p {
	margin: 0;
}

input[type="text"], input[type="submit"], button {
	padding: 10px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

input[type="text"], input[type="submit"] {
	width: 300px;
}

input[type="submit"], button {
	background-color: #21cdd3;
	color: #fff;
	cursor: pointer;
}

input[type="submit"]:hover, button:hover {
	background-color: #024b45;
}

table {
	border-collapse: collapse;
	width: 100%;
}

table, th, td {
	border: 1px solid #ccc;
}

th, td {
	padding: 10px;
	text-align: left;
}

th {
	background-color: #f0f0f0;
	font-weight: bold;
}

td input[type="text"] {
	width: 100%;
}

a {
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
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
				<a class="navbar-brand" href="#">LAUNDRYMART</a>
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
						aria-current="page" href="AdminHome.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="OrderManagement.jsp">Order</a></li>
					<li class="nav-item"><a class="nav-link" href="customer.jsp">Customers</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="employee.jsp">Employees</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Inquiry</a></li>
				</ul>
				<form class="d-flex" role="search">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>
	<br>
	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<form action="Customerview" method="post">
					<div class="mb-3">
						<label for="fullName" class="form-label">Enter Your Full
							Name:</label> <input type="text" class="form-control" id="fullName"
							placeholder="Enter your Full Name" name="f_name" required>
					</div>
					<div class="mb-3">
						<button type="submit" class="btn btn-primary" name="submit">Submit</button>
					</div>
				</form>
			</div>
		</div>
	</div>


	<br>
	<br>
	<br>
	<br>
	<br>

	<c:forEach var="cus" items="${cusDetails}">

		<c:set var="name" value="${cus.name}" />
		<c:set var="address" value="${cus.address}" />
		<c:set var="email" value="${cus.email}" />
		<c:set var="mobile" value="${cus.mobile}" />
		<c:set var="nic" value="${cus.nic}" />
		<c:set var="user" value="${cus.user}" />
		<c:set var="password" value="${cus.password}" />
		<c:set var="id" value="${cus.id}" />
		<form action="Customerdelete" method="post">

			<table>
				<tr>
					<td>Name :</td>
					<td><input type="text" name="f_name" value="${cus.name}"
						readonly></td>
				</tr>

				<tr>
					<td>Address :</td>
					<td>${cus.address}</td>
				</tr>

				<tr>
					<td>Email :</td>
					<td>${cus.email}</td>
				</tr>

				<tr>
					<td>Phone Number :</td>
					<td>${cus.mobile}</td>
				</tr>

				<tr>
					<td>NIC Number :</td>
					<td>${cus.nic}</td>
				</tr>

				<tr>
					<td>User Name :</td>
					<td>${cus.user}</td>
				</tr>

				<tr>
					<td>Password :</td>
					<td>${cus.password}</td>
				</tr>

				<tr>
					<td>ID :</td>
					<td>${cus.id}</td>
				</tr>
				</form>

				<c:url value="update.jsp" var="update">

					<c:param name="name" value="${name}"></c:param>
					<c:param name="address" value="${address}"></c:param>
					<c:param name="email" value="${email}"></c:param>
					<c:param name="mobile" value="${mobile}"></c:param>
					<c:param name="nic" value="${nic}"></c:param>
					<c:param name="user" value="${user}"></c:param>
					<c:param name="password" value="${password}"></c:param>

				</c:url>

				<a href="${update}"><input type="button" name="update"
					value="Update"></a>
				<br>
				<br>

				<button type="submit">Delete</button>
			</table>
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
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>