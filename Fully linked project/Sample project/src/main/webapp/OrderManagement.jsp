<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Order Management - Laundry Service</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-image: url('https://source.unsplash.com/1600x900/?laundry');
            background-size: cover;
            background-attachment: fixed;
        }
        .unique-container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            margin-top: 20px;
        }
        .unique-header {
            text-align: center;
            margin-bottom: 30px;
        }
        .unique-navbar {
            margin-bottom: 20px;
        }
        .unique-footer {
            text-align: center;
            padding: 10px;
            background-color: #343a40;
            color: white;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark unique-navbar">
        <a class="navbar-brand" href="#">Laundry Admin</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="OrderManagement.jsp">Orders</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="services.jsp">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="customer.jsp">Customers</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="AdminHome.jsp">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container unique-container">
        <h1 class="unique-header">Order Management</h1>
        <table class="table table-bordered table-hover">
            <thead class="thead-dark">
                <tr>
                    <th>Order ID</th>
                    <th>Customer Name</th>
                    <th>Service Type</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>John Doe</td>
                    <td>Regular Wash</td>
                    <td>10</td>
                    <td>$50</td>
                    <td>
                        <button class="btn btn-primary btn-sm">Edit</button>
                        <button class="btn btn-danger btn-sm">Delete</button>
                    </td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Jane Smith</td>
                    <td>Dry Clean</td>
                    <td>5</td>
                    <td>$40</td>
                    <td>
                        <button class="btn btn-primary btn-sm">Edit</button>
                        <button class="btn btn-danger btn-sm">Delete</button>
                    </td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Mike Johnson</td>
                    <td>Fluff and Fold</td>
                    <td>8</td>
                    <td>$80</td>
                    <td>
                        <button class="btn btn-primary btn-sm">Edit</button>
                        <button class="btn btn-danger btn-sm">Delete</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

    <footer class="unique-footer">
        <p>&copy; 2024 Laundry Service Management System</p>
    </footer>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
