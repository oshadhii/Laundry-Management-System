<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laundry Service Pricing</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" 
	integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" 
	crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    <style>
	    body{
	    	background-color:#c5bba1;
	    }
        .price {
        	margin-top:50px;
        	margin-bottom:50px;
            width: 1000px;
            margin-left: 200px;
            padding: 25px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.5);
            border-radius: 10px;
        }
        .price h1 {
            text-align: center;
            margin-bottom: 30px;
            color: #21cdd3;
            font-size: 40px;
            padding: 10px;
            border-radius: 10px;
        } 
        .unique-table {
            margin-bottom: 30px;
        }
        .calculator {
            margin-top: 20px;
        }
        .input_box button {
            width: 25%;
            background-color: #21cdd3;
            border: none;
            color: #fff;
            padding: 15px;
            border-right: 4px;
            font-size: 16px;
            transition: all 0.3s ease;
            border-radius: 8px;
        }
        .input_box button:hover {
            cursor: pointer;
            background-color: #024b45;
        }
        .result {
            text-align: center;
            margin-top: 20px;
            font-size: 1.2em;
            font-weight: bold;
            color: #28a745;
        }
        
        .Footercontainer{
	    height: 300px;
	    max-width: 1170px;
		margin:auto;
		}
		.Footercontainer .row{
			display: flex;
			flex-wrap: wrap;
		}
		.Footercontainer ul{
			list-style: none;
		}
		.footer{
			background-color: #24262b;
		    padding: 70px 0;
		}
		.footer-col{
		   width: 25%;
		   padding: 0 15px;
		}
		.footer-col h4{
			font-size: 18px;
			color: #ffffff;
			text-transform: capitalize;
			margin-bottom: 35px;
			font-weight: 500;
			position: relative;
		}
		.footer-col h4::before{
			content: '';
			position: absolute;
			left:0;
			bottom: -10px;
			background-color: #e91e63;
			height: 2px;
			box-sizing: border-box;
			width: 50px;
		}
		.footer-col ul li:not(:last-child){
			margin-bottom: 10px;
		}
		.footer-col ul li a{
			font-size: 16px;
			text-transform: capitalize;
			color: #ffffff;
			text-decoration: none;
			font-weight: 300;
			color: #bbbbbb;
			display: block;
			transition: all 0.3s ease;
		}
		.footer-col ul li a:hover{
			color: #ffffff;
			padding-left: 8px;
		}
		.footer-col .social-links a{
			display: inline-block;
			height: 40px;
			width: 40px;
			background-color: rgba(255,255,255,0.2);
			margin:0 10px 10px 0;
			text-align: center;
			line-height: 40px;
			border-radius: 50%;
			color: #ffffff;
			transition: all 0.5s ease;
		}
		.footer-col .social-links a:hover{
			color: #24262b;
			background-color: #ffffff;
		}
		button:hover{
			background-color:light-blue;
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
        <div class="price">
            <h1  style="color:black;">Laundry Service Pricing</h1>
            <table class="table table-bordered">
                <thead class="thead-dark">
                    <tr>
                        <th>Service Type</th>
                        <th>Price per Item</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Regular Wash</td>
                        <td>$5</td>
                    </tr>
                    <tr>
                        <td>Dry Clean</td>
                        <td>$8</td>
                    </tr>
                    <tr>
                        <td>Fluff and Fold Laundry Service</td>
                        <td>$10</td>
                    </tr>
                </tbody>
            </table>
            
            <div class="calculator">
                <h2>Calculate Your Price</h2>
                <form id="priceCalculatorForm">
                    <div>
                        <label for="ServiceType">Service Type</label>
                        <select class="form-control" id="ServiceType" required>
                            <option value="regular">Regular Wash</option>
                            <option value="dry">Dry Clean</option>
                            <option value="fluff">Fluff and Fold Laundry Service</option>
                        </select>
                    </div><br>
                    <div>
                        <label for="quantity">Quantity</label>
                        <input type="number" class="form-control" id="Quantity" placeholder="Enter quantity" required>
                    </div><br>
                    <div class="input_box">
                        <button type="button" onclick="calculatePrice()">Calculate</button>
                    </div>
                </form>
                <div id="priceResult" class="result"></div>
            </div>
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

    <script>
        function calculatePrice() {
            const ServiceType = document.getElementById('ServiceType').value;
            const Quantity = document.getElementById('Quantity').value;
            let pricePerItem = 0;

            switch(ServiceType) {
                case 'regular':
                    pricePerItem = 5;
                    break;
                case 'dry':
                    pricePerItem = 8;
                    break;
                case 'fluff':
                    pricePerItem = 10;
                    break;
            }

            const totalPrice = pricePerItem * Quantity;
            document.getElementById('priceResult').innerText = 'Total Price: $' + totalPrice.toFixed(2);
        }
    </script>
</body>
</html>