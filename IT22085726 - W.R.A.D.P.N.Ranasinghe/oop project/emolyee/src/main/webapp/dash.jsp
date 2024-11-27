<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee List</title>
<link rel="stylesheet" href="CSS/dash.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
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
</head>
<body>
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
<div class="img">
    <div class="dashboard">
        <div class="sidebar">
            <!-- Sidebar content -->
        </div>
        <div class="main-content">
            <h1>Employee List</h1>
            <div class="employee-list">
                <div class="employee">
                    
                    <form action="view_servlet" method="post">
                    <p>Enter Your Full Name :</p>
                    <div>
                        <input type="text" placeholder="Enter your Full Name" name="name" required class="name">
                    </div><br>
                    <div>
                        <input type="submit" name = "submit">
                    </div>
                </form><br><br><br><br><br>
            
<c:forEach var = "emp" items = "${empDetails}">
 
<c:set var = "name" value = "${emp.name}"/>
<c:set var = "email" value = "${emp.email}"/>
<c:set var = "phone" value = "${emp.phone}"/>
<c:set var = "uname" value = "${emp.uname}"/>
<c:set var = "pwd" value = "${emp.pwd}"/>
<c:set var = "id" value = "${emp.id}"/>

<form action="delete_servlet" method="post">
<table>
<tr>
<td>Name : </td>
<td><input type = "text" name = "name" value = "${emp.name}"></td>
</tr>

<tr>
<td>Email : </td>
<td>${emp.email}</td>
</tr>

<tr>
<td>Phone Number : </td>
<td>${emp.phone}</td>
</tr>

<tr>
<td>User name : </td>
<td>${emp.uname}</td>
</tr>

<tr>
<td>ID : </td>
<td>${emp.id}</td>
</tr>

<c:url value = "update.jsp" var = "update">
<c:param name = "name" value = "${name}"></c:param>
<c:param name = "email" value = "${email}"></c:param>
<c:param name = "phone" value = "${phone}"></c:param>
<c:param name = "uname" value = "${uname}"></c:param>
<c:param name = "pwd" value = "${pwd}"></c:param>
<c:param name = "id" value = "${id}"></c:param>
</c:url>

<a href = "${update}"><input type = "button" name = "Update" value = "Update"></a>

<input type = "submit" name = "delete" value = "Delete">

</table>
</form>
</c:forEach>search employees with the name -->
				
          
    </div>
	</div>
			<a href="employee.jsp" class ="button">Add Employee</a>
				
    </div>
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