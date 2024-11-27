<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard - Laundry Management System</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #909090;
    }
    
    .box{
	height: 30px;
    width: 250px;
  	display: flex;
    position: relative;
  	cursor: pointer;
    padding: 10px 20px;
    padding-top: 5px;
    margin-right: 400px;
    background: #fff;
    border-radius: 30px;
    align-items:center;
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
	}
	
	.box:hover input{
		width: 400px;
	}
	
	.box input{
	    padding-top: auto;
		width: 0;
	  	outline: none;
	  	border: none;
	    font-weight: 500;
	    transition: 0.8s;
	    background: transparent;
	}
	
	.box input a{
	    padding-top: 10px;
	    font-size: 20px;
		color: #000;
	}

    .container-fluid {
        padding: 20px;
    }

    .page-title {
        font-size: 24px;
        margin-bottom: 20px;
    }

    .card {
        border-radius: 10px;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
    }

    .card-header {
        background-color: #ffffff;
        border-bottom: 1px solid #e3e3e3;
    }

    .card-body {
        padding: 20px;
    }

    .btn-action {
        margin-right: 10px;
    }

    .table-responsive {
        margin-top: 20px;
    }

    .footer {
        margin-top: 50px;
        text-align: center;
        color: #000000;
    }
</style>
</head>
<body>

<!-- Navigation bar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#"><h1>LAUNDRYMART Admin</h1></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Dashboard</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="OrderManagement.jsp">Orders</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="customer">Customers</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="employee">Employees</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Contact_us">Inquiry</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="AdminHome">Logout</a>
                </li>
            </ul>
        </div>
    </div>
    <div class="box">
            <input type="text"  placeholder="Search .....">
              <a href ="#">
                <i class="fa fa-search" aria-hidden="true"></i>
              </a>
    </div>
</nav>

<div class="container-fluid">
    <div class="row">
        <!-- Sidebar -->
        <div class="col-lg-3">
            <div class="card mb-4">
                <div class="card-header">
                    <h5 class="card-title">Quick Links</h5>
                </div>
                <div class="card-body">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item"><a href="#">New Orders</a></li>
                        <li class="list-group-item"><a href="#">Pending Orders</a></li>
                        <li class="list-group-item"><a href="#">Completed Orders</a></li>
                        <li class="list-group-item"><a href="#">Customers</a></li>
                        <li class="list-group-item"><a href="#">Inventory</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Content area -->
        <div class="col-lg-9">
            <div class="card mb-4">
                <div class="card-header">
                    <h5 class="card-title">Recent Orders</h5>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Order ID</th>
                                    <th>Customer Name</th>
                                    <th>Order Date</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Imal Ayodya</td>
                                    <td>2024-05-25</td>
                                    <td><span class="badge bg-primary">Pending</span></td>
                                    <td>
                                        <a href="#" class="btn btn-sm btn-primary btn-action">View</a>
                                        <a href="#" class="btn btn-sm btn-danger btn-action">Delete</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Pasan Amarasinghe</td>
                                    <td>2024-05-22</td>
                                    <td><span class="badge bg-primary">Pending</span></td>
                                    <td>
                                        <a href="#" class="btn btn-sm btn-primary btn-action">View</a>
                                        <a href="#" class="btn btn-sm btn-danger btn-action">Delete</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Nethma Sankalpa</td>
                                    <td>2024-05-20</td>
                                    <td><span class="badge bg-primary">Pending</span></td>
                                    <td>
                                        <a href="#" class="btn btn-sm btn-primary btn-action">View</a>
                                        <a href="#" class="btn btn-sm btn-danger btn-action">Delete</a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div><br><br><br><br><br>

<footer class="bg-body-tertiary text-center" >
  <div style="background-color:black;" class="container p-4 pb-0">
    <section class="mb-4">
      <a
      data-mdb-ripple-init
        class="btn text-white btn-floating m-1"
        style="background-color: #3b5998;"
        href="#!"
        role="button"
        ><i class="fab fa-facebook-f"></i
      ></a>

      <a
        data-mdb-ripple-init
        class="btn text-white btn-floating m-1"
        style="background-color: #55acee;"
        href="#!"
        role="button"
        ><i class="fab fa-twitter"></i
      ></a>

      <a
        data-mdb-ripple-init
        class="btn text-white btn-floating m-1"
        style="background-color: #dd4b39;"
        href="#!"
        role="button"
        ><i class="fab fa-google"></i
      ></a>

      <a
        data-mdb-ripple-init
        class="btn text-white btn-floating m-1"
        style="background-color: #ac2bac;"
        href="#!"
        role="button"
        ><i class="fab fa-instagram"></i
      ></a>

      <a
        data-mdb-ripple-init
        class="btn text-white btn-floating m-1"
        style="background-color: #0082ca;"
        href="#!"
        role="button"
        ><i class="fab fa-linkedin-in"></i
      ></a>
     
    </section>
  </div>

  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.05);">
    © 2020 Copyright:
    <a class="text-body" href="https://mdbootstrap.com/">LAUNDRYMART</a>
  </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>

</body>
</html>
