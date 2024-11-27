<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard - Laundry Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <style>
	body{
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
</style>
</head>

<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="#"><h1>LAUNDRYMART</h1></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="Slider.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Order.jsp">Orders</a>
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
                </div>
                
            </div>
            <div class="box">
            <input type="text"  placeholder="Search .....">
              <a href ="#">
                <i class="fa fa-search" aria-hidden="true"></i>
              </a>
          </div>
        </nav>
    </header>

    <div class="container mt-4">
        <h1>Welcome to Your Dashboard</h1>
        <div class="row mt-4">

            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        
                        <h5 class="card-title">Profile Information</h5>
	                    <p><strong>Name:</strong> Imal Ayodya</p>
	                    <p><strong>Email:</strong> imal82421@gmail.com</p>
	                    <p><strong>Phone:</strong> 0775888474</p>
	                    <p><strong>Address:</strong> 230 Sinhapura, Hokandara, South</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Account Settings</h5>
                        <p><strong>Username:</strong>AAA</p>
                        <p><strong>Password:</strong> *********</p>
                        <button class="btn btn-primary">Change Password</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br><br><br><br><br><br><br><br><br>

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
    <a class="text-body" href="https://mdbootstrap.com/">MDBootstrap.com</a>
  </div>
</footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
   
</body>

</html>
