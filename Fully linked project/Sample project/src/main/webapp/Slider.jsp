<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" href="styles.css">
    <script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
</head>
<body style="height: 2000px;">
	<header>
		<div id="logo">LAUNDRY<span id="logo-s">MART</span></div>
		<span class="Hsign"><a href="Home.jsp" class="act" href="#">SIGN IN</a></span>
	</header>
	
    <div class="slider">
		<!-- fade css -->
		<div class="myslide fade">
			<div class="txt">
				<h1>Laundry Management</h1>
				<p>LaundryMart is a cutting-edge website designed to revolutionize 
					the way<br> you handle your laundry needs. Say goodbye to the hassle 
					of managing your <br>laundry tasks manually and embrace a seamless, efficient, 
					and user-friendly <br>experience with LaundryMart.
				</p>
			</div>
			<img src="images\bg1.jpeg" style="width: 100%; height: 100%;">
		</div>
		
		<div class="myslide fade">
			<div class="txt">
				<h1>Effortless Order Placement</h1>
                <p>With LaundryMart, you can place your laundry orders with just a few 
                        clicks. <br>Our intuitive interface allows you to select your desired 
                        services, specify<br> any special instructions, and schedule pickup and delivery times at your convenience.
                </p>
			</div>
			<img src="images\bg2.jpeg" style="width: 100%; height: 100%;">
		</div>
		
		<div class="myslide fade">
			<div class="txt">
				<h1>Transparent Pricing</h1>
                <p>We believe in transparency, which is why LaundryMart provides clear and 
                        competitive pricing<br> for all our services. No hidden fees, no surprises - 
                         straightforward pricing <br>that fits your budget.
                </p>
			</div>
			<img src="images\new1.jpg" style="width: 100%; height: 100%;">
		</div>
		
		<div class="myslide fade">
			<div class="txt">
				<h1>Customized Service Options</h1>
                <p>Whether you need regular laundry services, dry cleaning, or specialized treatment 
                   for delicate<br> fabrics, LaundryMart has you covered. Our range of service options caters
                   to your unique preferences<br> and requirements.
                </p>
			</div>
			<img src="images\new.jpg" style="width: 100%; height: 100%;">
		</div>
		
		<div class="myslide fade">
			<div class="txt">
				<h1>Real-Time Order Tracking</h1>
                <p>Stay informed about the status of your laundry orders with our real-time tracking feature. 
                   Monitor <br>the progress of your orders from pickup to delivery, ensuring peace of mind and complete<br> 
                   transparency throughout the process.
                </p>
			</div>
			<img src="images\bg5.png" style="width: 100%; height: 100%;">
		</div>
		<!-- /fade css -->
		
		<!-- onclick js -->
		<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  		<a class="next" onclick="plusSlides(1)">&#10095;</a>
		
		<div class="dotsbox" style="text-align:center">
			<span class="dot" onclick="currentSlide(1)"></span>
			<span class="dot" onclick="currentSlide(2)"></span>
			<span class="dot" onclick="currentSlide(3)"></span>
			<span class="dot" onclick="currentSlide(4)"></span>
			<span class="dot" onclick="currentSlide(5)"></span>
		</div>
		<!-- /onclick js -->
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
      
		<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
		<script src="jsfile.js"></script>
</body>
</html>
