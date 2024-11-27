<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Place Order</title>
    <link rel="stylesheet" href="styles.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <style type="text/css">
    	body{
    		background-image:url('images/laundry.jpg');
    	}
    </style>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<body>

	
    <header class="header">
        <a href="#" class="logo">LAUNDRYMART</a>
        <i class='bx bx-menu' id="menu-icon"></i>
        <nav class="navbar">
            <a href="Slider.jsp">Home</a>
            <a href="#">About</a>
            <a href="#">Pricing</a>
            <a href="#">Services</a>
            <a href="#">Contact Us</a>
        </nav>
    </header>
    <div class="nav-bg"></div>

    <div class="Ordercontainer">
        <h1>Place Your Order</h1><br><br>
        <form id="orderForm" action="OrderServlet" method="post">
			<input type="hidden" name="orderid" id="orderidInput" value=""/>

            <div class="form-group">
                <label for="serviceType">Service Type:</label>
                <select id="serviceType" name="type" class="form-control" required>
                    <option value="">Select a service</option>
                    <option value="Dry Clean" <c:if test="${order.type == 'Dry Clean'}">selected </c:if>>Dry Clean</option>
                    <option value="Regular Wash" <c:if test="${order.type == 'Regular Wash'}">selected </c:if>>Regular Wash</option>
                    <option value="Fluff and Fold Laundry Service" <c:if test="${order.type == 'Fluff and Fold Laundry Service'}">selected </c:if>>Fluff and Fold Laundry Service</option>
                </select>
            </div>
            <div class="form-group">
                <label for="quantity">Quantity:</label>
                <input type="number" id="quantity" name="quantity" min="1" required value="<c:out value="${order.quantity}"/>">
            </div>
            <div class="form-group">
                <label for="item">Full name:</label>
                <input type="text" id="item" name="Fname" required value="<c:out value="${order.fullName}"/>">
            </div>
            <div class="form-group">
                <label for="item">Phone number:</label>
                <input type="text" id="item" name="no" required value="<c:out value="${order.phoneNo}"/>">
            </div>
            <div class="form-group">
                <label for="item">Email:</label>
                <input type="text" id="item" name="email" required value="<c:out value="${order.email}"/>">
            </div>
            <div class="form-group">
                <label for="notes">Additional Notes:</label>
                <input type="text" id="notes" name="notes" rows="4" value="<c:out value="${order.notes}"/>">
            </div>
            <div class="form-group">
                <label for="notes">PickUp Address:</label>
                <input type="text" id="notes" name="pick" rows="4" value="<c:out value="${order.pickUpAddress}"/>">
            </div>
            <div class="form-group">
                <label for="notes">Delivery Address:</label>
                <input type="text" id="notes" name="deliver" rows="4" value="<c:out value="${order.deliveryAddress}"/>">
            </div>
            <div class="form-group">
                <button type="submit">Place Order</button>
            </div>
        </form>
        <div id="message"></div>
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
   <script>
    function getUrlParam(name) {
        const urlParams = new URLSearchParams(window.location.search);
        return urlParams.get(name);
    }

    const orderidFromUrl = getUrlParam('orderid');

    document.getElementById('orderidInput').value = orderidFromUrl;
</script>
   
   <script>
   <% if (request.getAttribute("errorMessage") != null) { %>
	        window.onload = function() {
	            alert("<%= request.getAttribute("errorMessage") %>");
	        };
    	<% } %>
    </script>
    <script src="jsfile.js"></script>
</body>
</html>