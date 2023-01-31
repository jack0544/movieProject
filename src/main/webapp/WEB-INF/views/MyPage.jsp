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
	<!-- ==========Header-Section========== -->
	<%@ include file = "header-section.jsp" %>
	<!-- ==========Header-Section========== -->
	<!-- ==========Banner-Section========== -->
	<section class="speaker-banner bg_img"
		data-background="./resources/assets/images/banner/banner07.jpg">
		<div class="container">
			<div class="speaker-banner-content">
				<h2 class="title">My Page</h2>
				<ul class="breadcrumb">
					<li><a href="index">Home</a></li>
					<li><a href="events">event</a></li>
					<li>MyPage</li>
				</ul>
			</div>
		</div>
	</section>
	<!-- ==========Banner-Section========== -->
	<!-- ==========Speaker-Single========== -->
	<section class="speaker-single padding-top pt-lg-0">
		<div class="container">
			<div class="speaker-wrapper bg-six padding-top padding-bottom">
				<div class="speaker-thumb">
					<img src="resources/profile/${member.memProfileName}">
					
				</div>
				<div class="speaker-content">
					<div class="author">
						<h2 class="title">${member.memName}님</h2> 
					</div>
					<div class="speak-con-wrapper">
						<div class="speak-con-area">

								<div class="item-content">
									<span class="up">내 정보 수정하기 → </span>
								<a href="mModiForm?memId=${member.memId}" class="custom-button">수정</a>
								</div>

								<div class="item-content">
									<span class="up">내 정보 삭제하고 탈퇴하기 →</span>
								<a href="mDelete?memId=${member.memId}" class="custom-button">탈퇴</a>

								

							</div>
							
								
							
						</div>
					<br>
					</div>
					<div class="content">
						<h3 class="subtitle">내 정보</h3>
						<div class="counter--area">
							<div class="counter-item">
								<div
									class="d-flex align-items-center mb-10">
									<h5>${member.memId }</h5>
								</div>
								<p style="color: pink;">아이디</p>
							</div>
							</div>
						
						<br><br>
								<div class="counter--area">
							<div class="counter-item">
								<div
									class="d-flex justify-content-center align-items-center mb-10">
									<h4 class="title">${member.memBirth }</h4>
								</div>
								<p style="color: pink;">생년월일</p>
							</div>
							</div>
						<br><br>
												<div class="counter--area">
							<div class="counter-item">
								<div
									class="d-flex justify-content-center align-items-center mb-10">
									<h4 class="title">${member.memPhone }</h4>
								</div>
								<p style="color: pink;">전화번호</p>
							</div>
							</div>
						
						<br>
						<a href="ticList?ticId=${loginId}" class="custom-button">예매정보 확인하기</a>
					</div>
				</div>
			</div>
			</div>
	</section>
	<!-- ==========Speaker-Single========== -->

	<!-- ==========Newslater-Section========== -->
	<footer class="footer-section">
			<div class="footer-bottom">
				<div class="footer-bottom-area">
					<div class="left">
						<p>
							Copyright Â© 2020.All Rights Reserved By <a
								href="http://www.bootstrapmb.com/">Boleto </a>
						</p>
					</div>
					<ul class="links">
						<li><a href="#0">About</a></li>
						<li><a href="#0">Terms Of Use</a></li>
						<li><a href="#0">Privacy Policy</a></li>
						<li><a href="#0">FAQ</a></li>
						<li><a href="#0">Feedback</a></li>
					</ul>
				</div>
			</div>
	</footer>
	<!-- ==========Newslater-Section========== -->
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
</html>