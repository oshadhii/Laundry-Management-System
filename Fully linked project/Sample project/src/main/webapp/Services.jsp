<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Services</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
    
    <style>
        .services-section {
            background-color: rgb(14, 11, 48);
            padding: 50px 20px;
            color: #eff4f4;
        }
        .services-section h2 {
            text-align: center;
            margin-bottom: 30px;
            font-size: 2.5rem;
        }
        .service-item {
            background-color: #fff;
            color: #000;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.5);
            margin-bottom: 20px;
        }
        .footer {
            background-color: #a59191;
            color: #fff;
            text-align: center;
            padding: 20px;
            position: relative;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>


    <nav class="navbar navbar-expand-lg bg-body-tertiary" data-bs-theme="dark">
        <div class="container">
            <a class="navbar-brand" href="#"><h1>LAUNDRYMART</h1></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="UserHome.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Services.jsp">Services</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Pricing.jsp">Pricing</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Contact_us.jsp">Contact</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav><br><br>

    <div class="container services-section">
        <h2>Our Services</h2>
        <div class="row">
            <div class="col-md-4">
                <div class="service-item">
                    <h5>Regular Wash</h5>
                    <p>High-quality regular wash services for your everyday clothes.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="service-item">
                    <h5>Dry Clean</h5>
                    <p>Professional dry cleaning services for your delicate garments.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="service-item">
                    <h5>Fluff and Fold</h5>
                    <p>Convenient fluff and fold laundry services for your comfort.</p>
                </div>
            </div>
        </div>
    </div><br><br><br>

    <footer class="footer">
        <div class="container">
            <p>&copy; 2024 LaundryService. All rights reserved.</p>
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
