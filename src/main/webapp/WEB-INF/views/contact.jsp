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
	<section class="main-page-header speaker-banner bg_img"
		data-background="./resources/assets/images/banner/banner07.jpg">
		<div class="container">
			<div class="speaker-banner-content">
				<h2 class="title">이메일 문의</h2>
				<ul class="breadcrumb">
					<li><a href="index">메인 메뉴</a></li>
					<li>이메일 문의</li>
				</ul>
			</div>
		</div>
	</section>
	<!-- ==========Banner-Section========== -->
	<!-- ==========Contact-Section========== -->
	<section class="contact-section padding-top">
		<div class="contact-container">
			<div class="bg-thumb bg_img"
				data-background="./resources/assets/images/contact/contact.jpg"></div>
			<div class="container">
				<div class="row justify-content-between">
					<div class="col-md-7 col-lg-6 col-xl-5">
						<div class="section-header-3 left-style">
							<span class="cate">이메일 문의</span>
							<h2 class="title"></h2>
							<p>불편사항이나 문의사항을 남겨주시면 최대한 신속하게 답변 드리겠습니다.</p>
						</div>
						
						<form name="mailSending" id="mailSending" class="contact-form">
						
							<input type="hidden" name="tomail" id="tomail" value="wkdtns3917@gmail.com">

							<div class="form-group">
								<label for="name">이름 </label><input type="text"
									placeholder="이름을 정확하게 입력해주세요" name="name" id="name" required>
							</div>
							<div class="form-group">
								<label for="email">이메일 </label><input type="text"
									placeholder="이메일을 정확하게 입력해주세요" name="email" id="email" required>
							</div>	
							<div class="form-group">
								<label for="title">제목 </label><input type="text" name="title"
									id="title" >
							</div>
							<div class="form-group">
								<label for="message">내용 </label>
								<textarea name="content" id="content"
									placeholder="불편사항이나 문의사항을 자세히 입력해주세요" required></textarea>
							</div>
							<div class="form-group">
								<input type="button" onclick="mailSend()" value="등록하기">
							</div>
						</form>
						
					</div>
					<div class="col-md-5 col-lg-6">
						<div class="padding-top padding-bottom contact-info">
							<div class="info-area">
								<div class="info-item">
									<div class="info-thumb">
										<img src="./resources/assets/images/contact/contact01.png"
											alt="contact">
									</div>
									<div class="info-content">
										<h6 class="title">전화번호</h6>
										<a href="Tel:82828282034">010-3917-9685</a>
									</div>
								</div>
								<div class="info-item">
									<div class="info-thumb">
										<img src="./resources/assets/images/contact/contact02.png"
											alt="contact">
									</div>
									<div class="info-content">
										<h6 class="title">이메일</h6>
										<a href="Mailto:info@gmail.com">wkdtns33917@gmail.com</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ==========Contact-Section========== -->
	<!-- ==========Contact-Counter-Section========== -->
	<section class="contact-counter padding-top padding-bottom">
		<div class="container">
			
		</div>
	</section>
	<!-- ==========Contact-Counter-Section========== -->
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
	<script src="./resources/assets/js/contact.js"></script>
	<script src="./resources/assets/js/main.js"></script>
</body>
<script>

	function mailSend(){
		
		let name = document.getElementById("name").value;
		let email = document.getElementById("email").value;
		let tomail = document.getElementById("tomail").value;
		let title = document.getElementById("title").value;
		let content = $("#content").val();
		
		if(!name || !email || !content){
			alert("모든 항목을 기입해주세요");
		} else{	
			alert("이메일 문의가 완료되었습니다.");
			mailSending.action = "mailSending.do";
			mailSending.mothod = "POST";
			mailSending.submit();
		}
		
	}
</script>

</html>