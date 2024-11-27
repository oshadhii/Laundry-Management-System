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
              <a class="nav-link active" aria-current="page" href="#">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Pricing</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Contact Us</a>
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
    <a href = "Order.jsp"></a><button type="button" class="btn btn-success">New Order</button></a>
    </div>
</div>
</body>
</html>
