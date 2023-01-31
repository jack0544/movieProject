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
<link rel="stylesheet"
	href="./resources/assets/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="./resources/assets/css/owl.theme.default.min.css">
<link rel="stylesheet" href="./resources/assets/css/nice-select.css">
<link rel="stylesheet"
	href="./resources/assets/css/jquery.animatedheadline.css">
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
	<%@ include file="header-section.jsp"%>
	<!-- ==========Header-Section========== -->
	<!-- ==========Banner-Section========== -->
	<section class="banner-section">
		<div class="banner-bg bg_img bg-fixed"
			data-background="./resources/assets/images/banner/banner01.jpg"></div>
		<div class="container">
			<div class="banner-content">
				<h1 class="title  cd-headline clip">
					<span class="d-block">지금바로 예매하기</span>요즘뜨는 <span
						class="color-theme cd-words-wrapper p-0 m-0"><b
						class="is-visible">영화는?</b> <c:forEach var="home1"
							items="${home1}">
							<b>${home1.movName}</b>
						</c:forEach></span>
				</h1>
				<br />
				<p>
					다양한 영화와 혜택이 가득! <a href="sign-up">회원가입</a> 하고 영화 예매하기
				</p>
			</div>
		</div>
	</section>
	<!-- ==========Banner-Section========== -->
	<!-- ==========Ticket-Search========== -->
	<!-- ==========Ticket-Search========== -->
	<!-- ==========Movie-Main-Section========== -->
	<section class="movie-section padding-top padding-bottom bg-two">
		<div clas="container">
			<div class="row flex-wrap-reverse justify-content-center">
				<div class="col-lg-9">
					<div class="article-section padding-bottom">
						<div class="section-header-1">
							<h2 class="title">영화 순위</h2>
							<a class="view-all" href="movie-list">더많은 영화보기 + </a>
						</div>
						<div class="row mb-30-none justify-content-center">
							<c:forEach var="home1" items="${home1}">
								<div class="col-sm-6 col-lg-4">
									<div class="movie-grid">
										<div class="movie-thumb c-thumb">
											<a href="#0"><img src="${home1.movMainPicture}"
												alt="movie"></a>
											<div class="event-date">
												<h3 class="date-title">${home1.movRank}</h3>
											</div>
										</div>
										<div class="movie-content bg-one">
											<h5 class="title m-0">
												<a href="#0">${home1.movName}</a>
											</h5>
											<ul class="movie-rating-percent">
												<li><div class="thumb">
														<img src="./resources/assets/images/movie/tomato.png"
															alt="movie">
													</div> <span class="content">${home1.movPeScore}</span></li>
												<li><div class="thumb">
														<img src="./resources/assets/images/movie/cake.png"
															alt="movie">
													</div> <span class="content">${home1.movGeScore}</span></li>
											</ul>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
					<div class="article-section padding-bottom">
						<div class="section-header-1">
							<h2 class="title">최신 개봉 영화</h2>
							<a class="view-all" href="movie-list">더많은 영화보기 + </a>
						</div>
						<div class="row mb-30-none justify-content-center">
							<c:forEach var="home2" items="${home2}">
								<div class="col-sm-6 col-lg-4">
									<div class="event-grid">
										<div class="movie-thumb c-thumb">
											<a href="#0"><img src="${home2.movMainPicture}"
												alt="event"></a>
											<div class="event-date">
												<h6 class="date-title">${home2.movDate}</h6>
											</div>
										</div>
										<div class="movie-content bg-one">
											<h5 class="title m-0">
												<a href="#0">${home2.movName}</a>
											</h5>
											<ul class="movie-rating-percent">
												<li><div class="thumb">
														<img src="./resources/assets/images/movie/tomato.png"
															alt="movie">
													</div> <span class="content">${home2.movPeScore}</span></li>
												<li><div class="thumb">
														<img src="./resources/assets/images/movie/cake.png"
															alt="movie">
													</div> <span class="content">${home2.movGeScore}</span></li>
											</ul>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ==========Movie-Main-Section========== -->
	<!-- ==========Newslater-Section========== -->
	<footer class="footer-section">
		<div class="newslater-section padding-bottom">
			<div class="container">
				<div class="newslater-container bg_img"
					data-background="./resources/assets/images/newslater/newslater-bg01.jpg">
					<div class="newslater-wrapper">
						<h5 class="cate">subscribe to Boleto</h5>
						<h3 class="title">to get exclusive benifits</h3>
						<form class="newslater-form">
							<input type="text" placeholder="Your Email Address">
							<button type="submit">subscribe</button>
						</form>
						<p>We respect your privacy, so we never share your info</p>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="footer-top">
				<div class="logo">
					<a href="index"><img
						src="./resources/assets/images/footer/footer-logo.png"
						alt="footer"></a>
				</div>
				<ul class="social-icons">
					<Sli> <a href="#0"><i class="fab fa-facebook-f"></i></a>
					</li>
					<li><a href="#0" class="active"><i class="fab fa-twitter"></i></a></li>
					<li><a href="#0"><i class="fab fa-pinterest-p"></i></a></li>
					<li><a href="#0"><i class="fab fa-google"></i></a></li>
					<li><a href="#0"><i class="fab fa-instagram"></i></a></li>
				</ul>
			</div>
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
		</div>
	</footer>
	<!-- ==========Newslater-Section========== -->
	<script src="./resources/assets/js/jquery-3.3.1.min.js"></script>
	<script src="./resources/assets/js/modernizr-3.6.0.min.js"></script>
	<script src="./resources/assets/js/plugins.js"></script>
	<script src="./resources/assets/js/bootstrap.min.js"></script>
	<script src="./resources/assets/js/heandline.js"></script>
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