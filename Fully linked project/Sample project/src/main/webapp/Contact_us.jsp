<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Contact Us</title>
<link rel="stylesheet" type="text/css" href="CSS\Contact_us.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" 
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" 
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<style type="text/css">

.Footercontainer {
	height: 300px;
	max-width: 1170px;
	margin-top: 1000px;
	]
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
	<header>
		<nav class="navbar navbar-expand-lg bg-body-tertiary"
			data-bs-theme="dark">
			<div class="container-fluid">
					<a class="navbar-brand" href="#"><h1>LAUNDRYMART</h1></a>
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
						<li class="nav-item"><a class="nav-link" href="Order.jsp">Orders</a></li>
						<li class="nav-item"><a class="nav-link" href="Pricing.jsp">Pricing</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="Services.jsp">Services</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="Contact_us.jsp">Contact Us</a></li>
					</ul>
					<form class="d-flex" role="search">
						<input class="form-control me-2" type="search"
							placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success" type="submit">Search</button>
					</form>
				</div>
			</div>
		</nav>
	</header>
	<div class="contact">
		<h2>Send a Message</h2>
		<form action="Contactinsert" method="post">
			<p class="p">Full Name :</p>
			<div class="input_box">
				<input type="text" placeholder="Enter your Full Name" name="fu_name"
					required class="name">
			</div>
			<br>
			<p class="p">Email :</p>
			<div class="input_box">
				<input type="email" placeholder="Enter your Email" name="email"
					required class="name">
			</div>
			<br>
			<p class="p">Mobile Number :</p>
			<div class="input_box">
				<input type="text" placeholder="Enter your Mobile Number"
					name="mobile" required class="name">
			</div>
			<br>
			<p class="p">Message :</p>
			<div class="input_box">
				<textarea placeholder="Enter your Message"  name="msg" required
					class="name"></textarea>
			</div>
			<br>
			<div class="input_box">
				<button type="submit">Send</button>
				<button onclick="document.location='id.jsp'">Inquiry
					Details</button>
			</div>
		</form>
	</div>
	<div class="contact_info">
		<form>
			<h1>Contact Info</h1>
			<div class="Contact_in">
				<h2>
					<i class="fas fa-envelope-square"></i> Post
				</h2>
				<p>19/A,New Mansion Street,USA</p>
				<h2>
					<i class="fas fa-phone-alt"></i> Telephone
				</h2>
				<p>1 (659) 594-5744</p>
				<p>1 (659) 594-5745</p>
				<h2>
					<i class="fas fa-at"></i> Email
				</h2>
				<p>trustbank365@globe.com</p>
				<h2>
					<i class="fas fa-fax"></i> FAX
				</h2>
				<p>+1-907-565-7788</p>
				<h2>
					<i class="fas fa-globe"></i> Swift Code
				</h2>
				<p>TBCUSA</p>
				<br>
			</div>
		</form>
	</div>
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