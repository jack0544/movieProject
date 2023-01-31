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
	<section class="details-banner hero-area bg_img seat-plan-banner"
		 data-background="${timeMovie.timBackPic}" >
		<div class="container">
			<div class="details-banner-wrapper">
				<div class="details-banner-content style-two">
					<h3 class="title">${timeMovie.timMovName}</h3>
					<div class="tags">
						<a href="#0">${timeMovie.timTheName}, ${timeMovie.timTheRoom}</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ==========Banner-Section========== -->
	<!-- ==========Page-Title========== -->
	<section class="page-title bg-one">
		<div class="container">
			<div class="page-title-area">
				<div class="item md-order-1">
					<a href="movie-ticket-plan" class="custom-button back-button"><i
						class="flaticon-double-right-arrows-angles"></i>뒤로</a>
				</div>
				<div class="item date-item">
					<span class="date">${timeMovie.timStartDate}</span><select
						class="select-bar" id="timeSel" onchange="timeSelect('this.value')">
						<option value="${timeMovie.timCurTime}">${timeMovie.timCurTime}</option>
						<c:if test="${timeMovie.timStartTime1 != '' && timeMovie.timStartTime1 != timeMovie.timCurTime}">
						<option value="${timeMovie.timStartTime1}">${timeMovie.timStartTime1}</option>
						</c:if>
						<c:if test="${timeMovie.timStartTime2 != '' && timeMovie.timStartTime2 != timeMovie.timCurTime}">
						<option value="${timeMovie.timStartTime2}">${timeMovie.timStartTime2}</option>
						</c:if>
						<c:if test="${timeMovie.timStartTime3 != '' && timeMovie.timStartTime3 != timeMovie.timCurTime}">
						<option value="${timeMovie.timStartTime3}">${timeMovie.timStartTime3}</option>
						</c:if>
						<c:if test="${timeMovie.timStartTime4 != '' && timeMovie.timStartTime4 != timeMovie.timCurTime}">
						<option value="${timeMovie.timStartTime4}">${timeMovie.timStartTime4}</option>
						</c:if>
						</select>
				</div>
				<div class="item">
					<h5 class="title">${timeMovie.timMinsLeft}</h5>
					<p>남았습니다.</p>
				</div>
			</div>
		</div>
	</section>
	<!-- ==========Page-Title========== -->
	<!-- ==========Movie-Section========== -->
	<div class="seat-plan-section padding-bottom padding-top">
		<div class="container">
			<div class="screen-area">
				<h4 class="screen">screen</h4>
				<div class="screen-thumb">
					<img src="./resources/assets/images/movie/screen-thumb.png"
						alt="movie">
				</div>
				<h5 class="subtitle">silver plus</h5>
				<div class="screen-wrapper">
					<ul class="seat-area">
						<li class="seat-line"><span>G</span>
							<ul class="seat--area">

								<li class="front-seat"><ul>
										<c:forEach var="i" begin="0" end="3" step="1">
											<c:choose>
											<c:when test="${seatG[i] == 0}">
											<li class="single-seat"><img
												src="./resources/assets/images/movie/seat01.png"
												alt="seat"></li>
											</c:when>
											<c:otherwise>
											<li class="single-seat seat-free" id="G${seatG[i]}" > 
											<img src="./resources/assets/images/movie/seat01-free.png"
												alt="seat" onmousedown="seatOn1('G${seatG[i]}')"><span class="sit-num" >G${seatG[i]}</span></li>
											</c:otherwise>
											</c:choose>
										</c:forEach>
									</ul></li>
								<li class="front-seat"><ul>
										<c:forEach var="i" begin="4" end="9" step="1">
											<c:choose>
											<c:when test="${seatG[i] == 0}">
											<li class="single-seat"><img
												src="./resources/assets/images/movie/seat01.png"
												alt="seat"></li>
											</c:when>
											<c:otherwise>
											<li class="single-seat seat-free" id="G${seatG[i]}" > 
											<img src="./resources/assets/images/movie/seat01-free.png"
												alt="seat" onmousedown="seatOn1('G${seatG[i]}')"><span class="sit-num" >G${seatG[i]}</span></li>
											</c:otherwise>
											</c:choose>
										</c:forEach>
									</ul></li>
								<li class="front-seat"><ul>
										<c:forEach var="i" begin="10" end="13" step="1">
											<c:choose>
											<c:when test="${seatG[i] == 0}">
											<li class="single-seat"><img
												src="./resources/assets/images/movie/seat01.png"
												alt="seat"></li>
											</c:when>
											<c:otherwise>
											<li class="single-seat seat-free" id="G${seatG[i]}" > 
											<img src="./resources/assets/images/movie/seat01-free.png"
												alt="seat" onmousedown="seatOn1('G${seatG[i]}')"><span class="sit-num" >G${seatG[i]}</span></li>
											</c:otherwise>
											</c:choose>
										</c:forEach>
									</ul></li>
							</ul> <span>G</span></li>
						<li class="seat-line"><span>F</span>
							<ul class="seat--area">

								<li class="front-seat"><ul>
										<c:forEach var="i" begin="0" end="3" step="1">
											<c:choose>
											<c:when test="${seatF[i]== 0}">
											<li class="single-seat"><img
												src="./resources/assets/images/movie/seat01.png"
												alt="seat"></li>
											</c:when>
											<c:otherwise>
											<li class="single-seat seat-free" id="F${seatF[i]}" > 
											<img src="./resources/assets/images/movie/seat01-free.png"
												alt="seat" onmousedown="seatOn1('F${seatF[i]}')"><span class="sit-num" >F${seatF[i]}</span></li>
											</c:otherwise>
											</c:choose>
										</c:forEach>
									</ul></li>
								<li class="front-seat"><ul>
										<c:forEach var="i" begin="4" end="9" step="1">
											<c:choose>
											<c:when test="${seatF[i] == 0}">
											<li class="single-seat"><img
												src="./resources/assets/images/movie/seat01.png"
												alt="seat"></li>
											</c:when>
											<c:otherwise>
											<li class="single-seat seat-free" id="F${seatF[i]}" > 
											<img src="./resources/assets/images/movie/seat01-free.png"
												alt="seat" onmousedown="seatOn1('F${seatF[i]}')"><span class="sit-num" >F${seatF[i]}</span></li>
											</c:otherwise>
											</c:choose>
										</c:forEach>
									</ul></li>
								<li class="front-seat"><ul>
										<c:forEach var="i" begin="10" end="13" step="1">
											<c:choose>
											<c:when test="${seatF[i] == 0}">
											<li class="single-seat"><img
												src="./resources/assets/images/movie/seat01.png"
												alt="seat"></li>
											</c:when>
											<c:otherwise>
											<li class="single-seat seat-free" id="F${seatF[i]}" > 
											<img src="./resources/assets/images/movie/seat01-free.png"
												alt="seat" onmousedown="seatOn1('F${seatF[i]}')"><span class="sit-num" >F${seatF[i]}</span></li>
											</c:otherwise>
											</c:choose>
										</c:forEach>
									</ul></li>
							</ul> <span>F</span></li>
					</ul>
				</div>
				<h5 class="subtitle">silver plus</h5>
				<div class="screen-wrapper">
					<ul class="seat-area couple">
						<li class="seat-line"><span>e</span>
							<ul class="seat--area">
								<li class="front-seat"><ul>
										<c:forEach var="i" begin="0" end="2" step="2">
											<c:choose>
											<c:when test="${seatE[i] == 0}">
											<li class="single-seat seat-free-two"><img
												src="./resources/assets/images/movie/seat02.png"
												alt="seat"></li>
											</c:when>
											<c:otherwise>
											<li class="single-seat seat-free-two" id="E${seatE[i]}" ><img
												src="./resources/assets/images/movie/seat02-free.png"
												alt="seat" onmousedown="seatOn2('E${seatE[i]}', 'E${seatE[i+1]}')"><span class="sit-num">E${seatE[i]}&nbsp;E${seatE[i+1]}</span></li>
											</c:otherwise>
											</c:choose>
										</c:forEach>
									</ul></li>

								<li class="front-seat"><ul>
										<c:forEach var="i" begin="4" end="8" step="2">
											<c:choose>
											<c:when test="${seatE[i] == 0}">
											<li class="single-seat seat-free-two"><img
												src="./resources/assets/images/movie/seat02.png"
												alt="seat"></li>
											</c:when>
											<c:otherwise>
											<li class="single-seat seat-free-two" id="E${seatE[i]}" ><img
												src="./resources/assets/images/movie/seat02-free.png"
												alt="seat" onmousedown="seatOn2('E${seatE[i]}', 'E${seatE[i+1]}')"><span class="sit-num">E${seatE[i]}&nbsp;E${seatE[i+1]}</span></li>
											</c:otherwise>
											</c:choose>
										</c:forEach>
									</ul></li>

								<li class="front-seat"><ul>
										<c:forEach var="i" begin="10" end="12" step="2">
											<c:choose>
											<c:when test="${seatE[i] == 0}">
											<li class="single-seat seat-free-two"><img
												src="./resources/assets/images/movie/seat02.png"
												alt="seat"></li>
											</c:when>
											<c:otherwise>
											<li class="single-seat seat-free-two" id="E${seatE[i]}" ><img
												src="./resources/assets/images/movie/seat02-free.png"
												alt="seat" onmousedown="seatOn2('E${seatE[i]}', 'E${seatE[i+1]}')"><span class="sit-num">E${seatE[i]}&nbsp;E${seatE[i+1]}</span></li>
											</c:otherwise>
											</c:choose>
										</c:forEach>
									</ul></li>

							</ul> <span>e</span></li>
						<li class="seat-line"><span>d</span>
							<ul class="seat--area">
								<li class="front-seat"><ul>
										<c:forEach var="i" begin="0" end="2" step="2">
											<c:choose>
											<c:when test="${seatD[i] == 0}">
											<li class="single-seat seat-free-two"><img
												src="./resources/assets/images/movie/seat02.png"
												alt="seat"></li>
											</c:when>
											<c:otherwise>
											<li class="single-seat seat-free-two" id="D${seatD[i]}" ><img
												src="./resources/assets/images/movie/seat02-free.png"
												alt="seat" onmousedown="seatOn2('D${seatD[i]}', 'D${seatD[i+1]}')"><span class="sit-num">D${seatD[i]}&nbsp;D${seatD[i+1]}</span></li>
											</c:otherwise>
											</c:choose>
										</c:forEach>
									</ul></li>

								<li class="front-seat"><ul>
										<c:forEach var="i" begin="4" end="8" step="2">
											<c:choose>
											<c:when test="${seatD[i] == 0}">
											<li class="single-seat seat-free-two"><img
												src="./resources/assets/images/movie/seat02.png"
												alt="seat"></li>
											</c:when>
											<c:otherwise>
											<li class="single-seat seat-free-two" id="D${seatD[i]}" ><img
												src="./resources/assets/images/movie/seat02-free.png"
												alt="seat" onmousedown="seatOn2('D${seatD[i]}', 'D${seatD[i+1]}')"><span class="sit-num">D${seatD[i]}&nbsp;D${seatD[i+1]}</span></li>
											</c:otherwise>
											</c:choose>
										</c:forEach>
									</ul></li>

								<li class="front-seat"><ul>
										<c:forEach var="i" begin="10" end="12" step="2">
											<c:choose>
											<c:when test="${seatD[i] == 0}">
											<li class="single-seat seat-free-two"><img
												src="./resources/assets/images/movie/seat02.png"
												alt="seat"></li>
											</c:when>
											<c:otherwise>
											<li class="single-seat seat-free-two" id="D${seatD[i]}" ><img
												src="./resources/assets/images/movie/seat02-free.png"
												alt="seat" onmousedown="seatOn2('D${seatD[i]}', 'D${seatD[i+1]}')"><span class="sit-num">D${seatD[i]}&nbsp;D${seatD[i+1]}</span></li>
											</c:otherwise>
											</c:choose>
										</c:forEach>
									</ul></li>
							</ul> <span>d</span></li>
						<li class="seat-line"><span>c</span>
							<ul class="seat--area">
								<li class="front-seat"><ul>
										<c:forEach var="i" begin="0" end="2" step="2">
											<c:choose>
											<c:when test="${seatC[i] == 0}">
											<li class="single-seat seat-free-two"><img
												src="./resources/assets/images/movie/seat02.png"
												alt="seat"></li>
											</c:when>
											<c:otherwise>
											<li class="single-seat seat-free-two" id="C${seatC[i]}" ><img
												src="./resources/assets/images/movie/seat02-free.png"
												alt="seat" onmousedown="seatOn2('C${seatC[i]}', 'C${seatC[i+1]}')"><span class="sit-num">C${seatC[i]}&nbsp;C${seatC[i+1]}</span></li>
											</c:otherwise>
											</c:choose>
										</c:forEach>
									</ul></li>

								<li class="front-seat"><ul>
										<c:forEach var="i" begin="4" end="8" step="2">
											<c:choose>
											<c:when test="${seatC[i] == 0}">
											<li class="single-seat seat-free-two"><img
												src="./resources/assets/images/movie/seat02.png"
												alt="seat"></li>
											</c:when>
											<c:otherwise>
											<li class="single-seat seat-free-two" id="C${seatC[i]}" ><img
												src="./resources/assets/images/movie/seat02-free.png"
												alt="seat" onmousedown="seatOn2('C${seatC[i]}', 'C${seatC[i+1]}')"><span class="sit-num">C${seatC[i]}&nbsp;C${seatC[i+1]}</span></li>
											</c:otherwise>
											</c:choose>
										</c:forEach>
									</ul></li>

								<li class="front-seat"><ul>
										<c:forEach var="i" begin="10" end="12" step="2">
											<c:choose>
											<c:when test="${seatC[i] == 0}">
											<li class="single-seat seat-free-two"><img
												src="./resources/assets/images/movie/seat02.png"
												alt="seat"></li>
											</c:when>
											<c:otherwise>
											<li class="single-seat seat-free-two" id="C${seatC[i]}" ><img
												src="./resources/assets/images/movie/seat02-free.png"
												alt="seat" onmousedown="seatOn2('C${seatC[i]}', 'C${seatC[i+1]}')"><span class="sit-num">C${seatC[i]}&nbsp;C${seatC[i+1]}</span></li>
											</c:otherwise>
											</c:choose>
										</c:forEach>
									</ul></li>
							</ul> <span>c</span></li>
						<li class="seat-line"><span>b</span>
							<ul class="seat--area">
								<li class="front-seat"><ul>
										<c:forEach var="i" begin="0" end="2" step="2">
											<c:choose>
											<c:when test="${seatB[i] == 0}">
											<li class="single-seat seat-free-two"><img
												src="./resources/assets/images/movie/seat02.png"
												alt="seat"></li>
											</c:when>
											<c:otherwise>
											<li class="single-seat seat-free-two" id="B${seatB[i]}" ><img
												src="./resources/assets/images/movie/seat02-free.png"
												alt="seat" onmousedown="seatOn2('B${seatB[i]}', 'B${seatB[i+1]}')"><span class="sit-num">B${seatB[i]}&nbsp;B${seatB[i+1]}</span></li>
											</c:otherwise>
											</c:choose>
										</c:forEach>
									</ul></li>

								<li class="front-seat"><ul>
										<c:forEach var="i" begin="4" end="8" step="2">
											<c:choose>
											<c:when test="${seatB[i] == 0}">
											<li class="single-seat seat-free-two"><img
												src="./resources/assets/images/movie/seat02.png"
												alt="seat"></li>
											</c:when>
											<c:otherwise>
											<li class="single-seat seat-free-two" id="B${seatB[i]}" ><img
												src="./resources/assets/images/movie/seat02-free.png"
												alt="seat" onmousedown="seatOn2('B${seatB[i]}', 'B${seatB[i+1]}')"><span class="sit-num">B${seatB[i]}&nbsp;B${seatB[i+1]}</span></li>
											</c:otherwise>
											</c:choose>
										</c:forEach>
									</ul></li>

								<li class="front-seat"><ul>
										<c:forEach var="i" begin="10" end="12" step="2">
											<c:choose>
											<c:when test="${seatB[i] == 0}">
											<li class="single-seat seat-free-two"><img
												src="./resources/assets/images/movie/seat02.png"
												alt="seat"></li>
											</c:when>
											<c:otherwise>
											<li class="single-seat seat-free-two" id="B${seatB[i]}" ><img
												src="./resources/assets/images/movie/seat02-free.png"
												alt="seat" onmousedown="seatOn2('B${seatB[i]}', 'B${seatB[i+1]}')"><span class="sit-num">B${seatB[i]}&nbsp;B${seatB[i+1]}</span></li>
											</c:otherwise>
											</c:choose>
										</c:forEach>
									</ul></li>
							</ul> <span>b</span></li>
						<li class="seat-line"><span>a</span>
							<ul class="seat--area">
								<li class="front-seat"><ul>
										<c:forEach var="i" begin="0" end="2" step="2">
											<c:choose>
											<c:when test="${seatA[i] == 0}">
											<li class="single-seat seat-free-two"><img
												src="./resources/assets/images/movie/seat02.png"
												alt="seat"></li>
											</c:when>
											<c:otherwise>
											<li class="single-seat seat-free-two" id="A${seatA[i]}" ><img
												src="./resources/assets/images/movie/seat02-free.png"
												alt="seat" onmousedown="seatOn2('A${seatA[i]}', 'A${seatA[i+1]}')"><span class="sit-num">A${seatA[i]}&nbsp;A${seatA[i+1]}</span></li>
											</c:otherwise>
											</c:choose>
										</c:forEach>
									</ul></li>

								<li class="front-seat"><ul>
										<c:forEach var="i" begin="4" end="8" step="2">
											<c:choose>
											<c:when test="${seatA[i] == 0}">
											<li class="single-seat seat-free-two"><img
												src="./resources/assets/images/movie/seat02.png"
												alt="seat"></li>
											</c:when>
											<c:otherwise>
											<li class="single-seat seat-free-two" id="A${seatA[i]}" ><img
												src="./resources/assets/images/movie/seat02-free.png"
												alt="seat" onmousedown="seatOn2('A${seatA[i]}', 'A${seatA[i+1]}')"><span class="sit-num">A${seatA[i]}&nbsp;A${seatA[i+1]}</span></li>
											</c:otherwise>
											</c:choose>
										</c:forEach>
									</ul></li>

								<li class="front-seat"><ul>
										<c:forEach var="i" begin="10" end="12" step="2">
											<c:choose>
											<c:when test="${seatA[i] == 0}">
											<li class="single-seat seat-free-two"><img
												src="./resources/assets/images/movie/seat02.png"
												alt="seat"></li>
											</c:when>
											<c:otherwise>
											<li class="single-seat seat-free-two" id="A${seatA[i]}" ><img
												src="./resources/assets/images/movie/seat02-free.png"
												alt="seat" onmousedown="seatOn2('A${seatA[i]}', 'A${seatA[i+1]}')"><span class="sit-num">A${seatA[i]}&nbsp;A${seatA[i+1]}</span></li>
											</c:otherwise>
											</c:choose>
										</c:forEach>
									</ul></li>
							</ul> <span>a</span></li>
					</ul>
				</div>
			</div>
			<div class="proceed-book bg_img"
				data-background="./resources/assets/images/movie/movie-bg-proceed.jpg">
				<div class="proceed-to-book" >
					<div class="book-item" style="width: 150px;">
						<span>선택한 좌석</span>
						<h3 class="title" id="seatChoose" ></h3>
					</div>
					<div class="book-item" >
						<span>지불할 요금</span>
						<h3 class="title" id="seatCharge">￦0</h3>
					</div>
					<div class="book-item">
						<a href="#" onclick="goCheckOut()" class="custom-button">계속</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ==========Movie-Section========== -->
	<!-- ==========Newslater-Section========== -->
	<footer class="footer-section">
		<!-- <div class="newslater-section padding-bottom">
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
		</div> -->
		<div class="container">
			<div class="footer-top">
				<div class="logo">
					<a href="index-1"><img
						src="./resources/assets/images/footer/footer-logo.png"
						alt="footer"></a>
				</div>
				<ul class="social-icons">
					<li><a href="#0"><i class="fab fa-facebook-f"></i></a></li>
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
	
	<script src="https://code.jquery.com/jquery-3.6.1.js"
	integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="
	crossorigin="anonymous"></script>
	<script>
	function seatOn1(seatId) {
		
		let seatId0 = document.getElementById(seatId);
		let seatChoose = document.getElementById("seatChoose");
		let seatCharge = document.getElementById("seatCharge");
		let seatChargeNum = Number(seatCharge.innerHTML.substring(1,seatCharge.innerHTML.length));
		
			$.ajax({
				type : "POST",
				url : "seatOn",
				data : {	
					"seatList" : "${seatList}" ,
					"seatId" : seatId
				},
				dataType : "text",
				success : function(result){
					seatId0.innerHTML = "<img src=\"./resources/assets/images/movie/seat01-booked.png\" alt=\"seat\" onmousedown=\"seatOff1('"+seatId+"')\">";
					if(seatChoose.innerHTML == ""){
						seatChoose.innerHTML += seatId;
					} else{
						seatChoose.innerHTML += " " + seatId;
					}
					seatChargeNum += 10000;
					seatCharge.innerHTML = "￦" + seatChargeNum;
					console.log(result);
				},
				error : function(){
					alert("seatOn 함수 통신실패!");
				}		
			});
	}
	function seatOn2(seatId1, seatId2) {
		
		let seatId0 = document.getElementById(seatId1);
		let seatChoose = document.getElementById("seatChoose");
		let seatCharge = document.getElementById("seatCharge");
		let seatChargeNum = Number(seatCharge.innerHTML.substring(1,seatCharge.innerHTML.length));
	
			$.ajax({
				type : "POST",
				url : "seatOn2",
				data : {	
					"seatList" : "${seatList}" ,
					"seatId1" : seatId1,
					"seatId2" : seatId2
				},
				dataType : "text",
				success : function(result){
					seatId0.innerHTML = "<img src=\"./resources/assets/images/movie/seat02-booked.png\" alt=\"seat\" onmousedown=\"seatOff2('"+seatId1+"', '"+seatId2 + "')\">";
					if(seatChoose.innerHTML == ""){
						seatChoose.innerHTML += seatId1 +" " +seatId2;
					} else{
						seatChoose.innerHTML += " " + seatId1 +" " +seatId2;
					}
					seatChargeNum += 20000;
					seatCharge.innerHTML = "￦" + seatChargeNum;
					console.log(result);
				},
				error : function(){
					alert("seatOn 함수 통신실패!");
				}		
			});	
	}
	
function seatOff1(seatId) {
		
		let seatId0 = document.getElementById(seatId);
		let seatChoose = document.getElementById("seatChoose");
		let seatCharge = document.getElementById("seatCharge");
		let seatChargeNum = Number(seatCharge.innerHTML.substring(1,seatCharge.innerHTML.length));
		
			$.ajax({
				type : "POST",
				url : "seatOff",
				data : {	
					"seatList" : "${seatList}" ,
					"seatId" : seatId
				},
				dataType : "text",
				success : function(result){
					seatId0.innerHTML = "<img src=\"./resources/assets/images/movie/seat01-free.png\" alt=\"seat\" onmousedown=\"seatOn1('"+seatId+"')\"><span class=\"sit-num\">"+seatId+"</span>";
					if(seatChoose.innerHTML.search(seatId) == 0){
					seatChoose.innerHTML = seatChoose.innerHTML.replace(seatId, "");						
					}else{
						seatChoose.innerHTML = seatChoose.innerHTML.replace(" "+seatId, "");
					}
					
					if(seatChargeNum != 0){
						seatChargeNum -= 10000;
						seatCharge.innerHTML = "￦" + seatChargeNum;
					}else{
						seatCharge.innerHTML = "";
					}
					console.log(result);
				},
				error : function(){
					alert("seatOff 함수 통신실패!");
				}		
			});
	}
	function seatOff2(seatId1, seatId2) {
		
		let seatId0 = document.getElementById(seatId1);
		let seatChoose = document.getElementById("seatChoose");
		let seatCharge = document.getElementById("seatCharge");
		let seatChargeNum = Number(seatCharge.innerHTML.substring(1,seatCharge.innerHTML.length));
	
			$.ajax({
				type : "POST",
				url : "seatOff2",
				data : {	
					"seatList" : "${seatList}" ,
					"seatId1" : seatId1,
					"seatId2" : seatId2
				},
				dataType : "text",
				success : function(result){
					seatId0.innerHTML = "<img src=\"./resources/assets/images/movie/seat02-free.png\" alt=\"seat\" onmousedown=\"seatOn2('"+seatId1+"', '"+seatId2+"')\"><span class=\"sit-num\">"+seatId1+ "&nbsp;"+ seatId2+"</span>";
					if(seatChoose.innerHTML.search(seatId1) == 0){
						seatChoose.innerHTML = seatChoose.innerHTML.replace(seatId1+" "+seatId2, " ");						
						}else{
							seatChoose.innerHTML = seatChoose.innerHTML.replace(" "+seatId1 +" "+ seatId2, "");
						}
						if(seatChargeNum != 0){
							seatChargeNum -= 20000;
							seatCharge.innerHTML = "￦" + seatChargeNum;
						}else{
							seatCharge.innerHTML = "";
						}
					console.log(result);
				},
				error : function(){
					alert("seatOff 함수 통신실패!");
				}		
			});	
	}
	
	function timeSelect(time){
		
		let selTime = document.getElementById('timeSel').value;
		location.href="movie-seat-plan?timMovName=${timeMovie.timMovName}&timTheName=${timeMovie.timTheName}&timTheRoom=${timeMovie.timTheRoom}&timStartDate=${timeMovie.timStartDate}&timCurTime="+ selTime;
		
	}
	
	function goCheckOut(){
		let seatChargeNum = seatCharge.innerHTML.substring(1,seatCharge.innerHTML.length);
		
		location.href="payInsert?timMovName=${timeMovie.timMovName}&timTheName=${timeMovie.timTheName}&timTheRoom=${timeMovie.timTheRoom}&timStartDate=${timeMovie.timStartDate}&timCurTime=${timeMovie.timCurTime}&timCost="+seatChargeNum;
	}
	
	
</script>
	
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