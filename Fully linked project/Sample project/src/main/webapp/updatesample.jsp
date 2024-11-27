<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.3/assets/css/docs.css" rel="stylesheet">
    <title>Orders</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <style type="text/css">
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
    </style>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
	body{
		background-color: light-gray;
	}
	button:hover{
		background-color:light-blue;
	}
</style>
</head>

    
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
      <div class="container-fluid">
        <h1><a class="navbar-brand" href="#">LAUNDRYMART</a></h1>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="UserHome.jsp">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Order.jsp">Order</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Pricing.jsp">Pricing</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Services.jsp">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Contact_us.jsp">Contact Us</a>
            </li>
          </ul>
          <form class="d-flex" role="search">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
          </form>
        </div>
      </div>
    </nav>
    
<div class="p-3 mb-2 bg-primary text-white">
    <h4 align="center">Order Details</h4>
    <div class="container">
    <table class="table table-dark">
        <thead>
            <tr bgcolor="#120671">
            	<th scope="col">Order Id</th>
                <th scope="col">Type</th>
                <th scope="col">Quantity</th>
                <th scope="col">Full Name</th>
                <th scope="col">Phone Number</th>
                <th scope="col">Email</th>
                <th scope="col">Notes</th>
                <th scope="col">Pickup Address</th>
                <th scope="col">Delivery Address</th>
                <th scope="col">Action</th>
            </tr>
        </thead>
        <div class="red"></div>
        <tbody>
            <c:forEach var="order" items="${orders}">
                <tr class="table-active">
                    <td scope="row"><c:out value="${order.orderid}" /></td>
                    <td scope="row"><c:out value="${order.type}" /></td>
                    <td scope="row"><c:out value="${order.quantity}" /></td>
                    <td scope="row"><c:out value="${order.fullName}" /></td>
                    <td scope="row"><c:out value="${order.phoneNo}" /></td>
                    <td scope="row"><c:out value="${order.email}" /></td>
                    <td scope="row"><c:out value="${order.notes}" /></td>
                    <td scope="row"><c:out value="${order.pickUpAddress}" /></td>
                    <td scope="row"><c:out value="${order.deliveryAddress}" /></td>
                    <td>
                        <a href="?action=delete&orderid=<c:out value="${order.orderid}" />"><button type="button" class="btn btn-sm btn-danger btn-action">Delete</button><i class="fa fa-trash" aria-hidden="true"></i></a><br> &nbsp
						<a href="?action=update&orderid=<c:out value="${order.orderid}" />"><button type="button" class="btn btn-primary">Edit</button><i class="fa fa-edit" aria-hidden="true"></i></a>
                    </td>
                </tr>
            </c:forEach>
            
        </tbody>
    </table>
    <a href = "Order.jsp"><button type="button" class="btn btn-success">New Order</button></a>
    </div>
</div><br><br><br><br><br><br><br><br><br>

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
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                </div>
            </div>
        </div>
   </footer>
</body>
</html>
