<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="./resources/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/assets/css/all.min.css">
<link rel="stylesheet" href="./resources/assets/css/animate.css">
<link rel="stylesheet" href="./resources/assets/css/flaticon.css">
<link rel="stylesheet" href="./resources/assets/css/magnific-popup.css">
<link rel="stylesheet" href="./resources/assets/css/odometer.css">
<link rel="stylesheet" href="./resources/assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="./resources/assets/css/owl.theme.default.min.css">
<link rel="stylesheet" href="./resources/assets/css/nice-select.css">
<link rel="stylesheet" href="./resources/assets/css/main.css">
<link rel="shortcut icon" href="./resources/assets/images/favicon.png"
	type="image/x-icon">
<title>Boleto - Online Ticket Booking Website HTML Template</title>
</head>
<body>
	<!-- ==========Preloader========== -->
	<div class="preloader">
		<div class="preloader-inner">
			<div class="preloader-icon">
				<span></span><span></span>
			</div>
		</div>
	</div>
	<!-- ==========Preloader========== -->
	<!-- ==========Overlay========== -->
	<div class="overlay"></div>
	<a href="#0" class="scrollToTop"><i class="fas fa-angle-up"></i></a>
	<!-- ==========Overlay========== -->

	<!-- ==========Event-Section========== -->
	<div class="event-facility padding-bottom padding-top">
		<div class="container">
			<div class="section-header-3">
				<span class="cate">Event Coupon</span>
				<h2 class="title">쿠폰을 선택하세요</h2>
				<p>그림퀴즈 풀고 쿠폰 얻기</p>
			</div>
			<div class="row justify-content-center mb-30-none">
				<div class="col-md-6 col-lg-4 col-sm-10">
					<div class="ticket--item">
						<div class="ticket-thumb">
							<img src="https://upload.wikimedia.org/wikipedia/commons/2/27/The_Standard_logo.png" alt="event">
						</div>
						<div class="ticket-content">
							<span class="ticket-title">Standard 쿠폰</span>
							<h2 class="amount">
								<sup>￦</sup>1000
							</h2>
							<ul>
								<li>난이도 쉬움</li>
							</ul>
							<a id="cp1" class="custom-button">쿠폰 얻으러 가기</a>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-4 col-sm-10">
					<div class="ticket--item two">
						<div class="hot">
							<span>hot</span>
						</div>
						<div class="ticket-thumb">
							<img src="https://www.kindpng.com/picc/m/491-4919441_premium-stamp-psd-tag-special-promotion-png-transparent.png" alt="event" >
						</div>
						<div class="ticket-content">
							<span class="ticket-title">Premium 쿠폰</span>
							<h2 class="amount">
								<sup>￦</sup>2000
							</h2>
							<ul>
								<li>난이도 보통</li>
							</ul>
							<a id="cp2" class="custom-button">쿠폰 얻으러 가기</a>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-4 col-sm-10">
					<div class="ticket--item three">
						<div class="ticket-thumb">
							<img src="https://lopezdesign.com/wp-content/uploads/2020/08/VIP-logo-new.jpg" alt="event">
						</div>
						<div class="ticket-content">
							<span class="ticket-title">VIP 쿠폰</span>
							<h2 class="amount">
								<sup>￦</sup>5000
							</h2>
							<ul>
								<li>난이도 어려움</li>
								
							</ul>
							<a id="cp3" class="custom-button">쿠폰 얻으러 가기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ==========Event-Section========== -->
	
	<script src="./resources/assets/js/jquery-3.3.1.min.js"></script>
	<script src="./resources/assets/js/modernizr-3.6.0.min.js"></script>
	<script src="./resources/assets/js/plugins.js"></script>
	<script src="./resources/assets/js/bootstrap.min.js"></script>
	<script src="./resources/assets/js/isotope.pkgd.min.js"></script>
	<script src="./resources/assets/js/magnific-popup.min.js"></script>
	<script src="./resources/assets/js/owl.carousel.min.js"></script>
	<script src="./resources/assets/js/wow.min.js"></script>
	<script src="./resources/assets/js/countdown.min.js"></script>
	<script src="./resources/assets/js/odometer.min.js"></script>
	<script src="./resources/assets/js/viewport.jquery.js"></script>
	<script src="./resources/assets/js/nice-select.js"></script>
	<script src="./resources/assets/js/main.js"></script>
</body>
<script>

	let cp1 = document.getElementById("cp1");
	let cp2 = document.getElementById("cp2");
	let cp3 = document.getElementById("cp3");
	
	cp1.addEventListener('click', function () {
        myWindow = window.open("puzzle?level=1&movName=${curMovName}", "myWindow", "left=100, width=1500, height=1500");
        // window.open("URL", "TITLE", "OPTION");
		window.close();
    })
    cp2.addEventListener('click', function () {
        myWindow = window.open("puzzle?level=2&movName=${curMovName}", "myWindow", "left=100, width=1500, height=1500");
        // window.open("URL", "TITLE", "OPTION");
        window.close();
    })
    cp3.addEventListener('click', function () {
        myWindow = window.open("puzzle?level=3&movName=${curMovName}", "myWindow", "left=100, width=1500, height=1500");
        // window.open("URL", "TITLE", "OPTION");
        window.close();
    })
	
	
</script>

</html>