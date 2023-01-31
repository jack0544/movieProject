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
	<section
		class="details-banner event-details-banner hero-area bg_img seat-plan-banner"
		data-background="./resources/assets/images/banner/banner07.jpg">
		<div class="container">
			<div class="details-banner-wrapper">
				<div class="details-banner-content style-two">
					<h3 class="title">
						<span class="d-block">Digital Marketing</span><span
							class="d-block">Conference -2020</span>
					</h3>
					<div class="tags">
						<span>17 South Sherman Street Astoria, NY 11106</span>
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
					<a href="movList?timMovName=압꾸정" class="custom-button back-button"><i
						class="flaticon-double-right-arrows-angles"></i>back</a>
				</div>
				<div class="item date-item">
					<span class="date">${date}</span>
				</div>
				<div class="item">
					<h5 class="title">${minsLeft}</h5>
					<p>남았습니다.</p>
				</div>
			</div>
		</div>
	</section>
	<!-- ==========Page-Title========== -->
	<!-- ==========Event-Section========== -->
	<div class="event-facility padding-bottom padding-top">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					
						<div class="checkout-widget checkout-contact">
						<h5 class="title" >보유 쿠폰</h5>
								<span id="cpBtnSpan">
										<input id='cpBtn1' onclick='cpListBtn()' type="button" value="보유쿠폰 확인" class="custom-button" style="width:10vw; position: relative; top: -5.5vw; left: 10vw;"><input id="cpBtn" onclick="cpBtn()" type="button" value="쿠폰 얻으러 가기" class="custom-button" style="width:10vw; position: relative; top: -5.5vw; left: 12vw;">
										</span>
						<div class="ticket--area row justify-content-left">
						
							<div class="col-sm-6 col-md-4"> 
							<span id="cpSpan1">
								</span> </div>
								<div class="col-sm-6 col-md-4"> 
							<span id="cpSpan2">
								</span> </div>
								<div class="col-sm-6 col-md-4"> 
							<span id="cpSpan3">
								</span> </div>
							</div> 
					</div>
</div>

				<div class="col-lg-4">
					<div class="booking-summery bg-one">
						<h4 class="title">선택하신 영화</h4>
						<ul>

							<li><h6 class="subtitle">회원이름</h6> <span class="info">${p.payName}</span>
								<span><img src="${p.payPic}" width="170vw;"
									height="220vw;"
									style="position: absolute; top: 5vw; left: 10vw;"></span></li>
							<br />
							<li><h6 class="subtitle">
									<span>영화이름</span>
								</h6> <span class="info">${p.payMovName}</span></li>
							<br />
							<li><h6 class="subtitle">
									<span>${p.payTheName}</span><span>${p.payTheRoom},
										${p.paySeatNum}</span>
								</h6>
								<div class="info">
									<span>${p.payStartDate}, ${p.payTimStart}</span>

								</div></li>

						</ul>
						<div class="proceed-area  text-center">
							<h6 class="subtitle">
								<span>가격 : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								 ${p.payMovPrice}원</span>
							</h6>
							<h6 class="subtitle">
								<span id="SalePrice"></span>
							</h6>
							<h6 class="subtitle">
								<span id="price" style="color:pink;"></span>
							</h6>
							<a href="payKakao?payId=${loginId}" class="custom-button">결제하기</a>
							<a href="payDelete?payId=${loginId}" class="custom-button">결제취소</a>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ==========Event-Section========== -->
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
	<script src="./resources/assets/js/main.js"></script>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.js"
	integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI="
	crossorigin="anonymous"></script>
<script>
	function chunwonSale() {
		let payId = '${loginId}';
		// location.href = "idCheck?memId=" + memId;

		let price = document.getElementById("price");
		let SalePrice = document.getElementById("SalePrice");

		$.ajax({
			type : "POST",
			url : "chunwonSale",
			data : {
				"payId" : payId
			},
			dataType : "json",
			success : function(payList) {

				price.innerHTML = "최종 가격 : " + payList[0].payMovPrice + "원";
				SalePrice.innerHTML = "할인 가격 : - 1000원"

			},
			error : function() {
				alert("idoverlap함수 통신실패!");

			}

		});

	}
	
	function samchunwonSale() {
		let payId = '${loginId}';
		// location.href = "idCheck?memId=" + memId;

		let price = document.getElementById("price");
		let SalePrice = document.getElementById("SalePrice");

		$.ajax({
			type : "POST",
			url : "samchunwonSale",
			data : {
				"payId" : payId
			},
			dataType : "json",
			success : function(payList) {

				price.innerHTML = "최종 가격 : " + payList[0].payMovPrice + "원";
				SalePrice.innerHTML = "할인 가격 : - 3000원"

			},
			error : function() {
				alert("idoverlap함수 통신실패!");

			}

		});

	}
	
	function ochunwonSale() {
		let payId = '${loginId}';
		// location.href = "idCheck?memId=" + memId;

		let price = document.getElementById("price");
		let SalePrice = document.getElementById("SalePrice");

		$.ajax({
			type : "POST",
			url : "ochunwonSale",
			data : {
				"payId" : payId
			},
			dataType : "json",
			success : function(payList) {

				price.innerHTML = "최종 가격 : " + payList[0].payMovPrice + "원";
				SalePrice.innerHTML = "할인 가격 : - 5000원"

			},
			error : function() {
				alert("idoverlap함수 통신실패!");

			}

		});

	}
	
	
	function cpBtn(){
		let span = document.getElementById("cpBtnSpan");
		
		myWindow = window.open("event-ticket", "coupon", "left=100, width=1500, height=1500");
		
		span.innerHTML = "<input id='cpBtn' onclick='cpListBtn()' type='button' value='보유쿠폰 확인' class='custom-button' style='width:15vw; position: relative; top: -5.5vw; left: 15vw;'>";
		
	}
	function cpListBtn(){
		let span1 = document.getElementById("cpSpan1");
		let span2 = document.getElementById("cpSpan2");
		let span3 = document.getElementById("cpSpan3");
		
		$.ajax({
			type : "POST",
			url : "cpCheck",
			data : {	
				"loginId" : "${loginId}"
			},
			dataType : "text",
			success : function(result){
				let cpList = eval(result);
				for(i in cpList){
					if(i == 0){
						if(cpList[i] != 0){
							span1.innerHTML = "<div class='ticket-item'> <div class='ticket-thumb'> <img src='https://upload.wikimedia.org/wikipedia/commons/2/27/The_Standard_logo.png' alt='event'> </div> <div class='ticket-content'> <span class='ticket-title'>Standard Coupon</span> <h2 class='amount'> <sup style='font-size:25px;'>￦</sup>1000</h2> <a href='#0' onclick=\"cpSel('1')\" class='t-button'><span id='cpSel1'><i class='fas fa-plus'></i></span></a></div> </div>";
						}
					}
					if(i == 1){
						if(cpList[i] != 0){
							span2.innerHTML = "<div class='ticket-item two'> <div class='ticket-thumb'><img src='https://www.kindpng.com/picc/m/491-4919441_premium-stamp-psd-tag-special-promotion-png-transparent.png' alt='event'></div><div class='ticket-content'><span class='ticket-title'>Premium Coupon</span><h2 class='amount'><sup style='font-size:25px;'>￦</sup>3000</h2>	<a href='#0' onclick=\"cpSel('2')\" class='t-button'><span id='cpSel2'><i class='fas fa-plus'></i></span></a></div></div>";
						}
					}
					if(i == 2){
						if(cpList[i] != 0){
							span3.innerHTML = "<div class='ticket-item three'><div class='ticket-thumb'><img src='https://lopezdesign.com/wp-content/uploads/2020/08/VIP-logo-new.jpg' alt='event'></div><div class='ticket-content'><span class='ticket-title'>VIP Coupon</span><h2 class='amount'><sup style='font-size:25px;'>￦</sup>5000</h2><a href='#0' onclick=\"cpSel('3')\" class='t-button'><span id='cpSel3'><i class='fas fa-plus'></i></span></a></div></div>";
						}
					}
				}
			},
			error : function(){
				alert("cpCheck 함수 통신실패!");
			}	
		});	
	}
	
function cpSel(num){
	let span1 = document.getElementById("cpSel1");
	let span2 = document.getElementById("cpSel2");
	let span3 = document.getElementById("cpSel3");
	
	if(num == "1"){
		chunwonSale();
		span1.innerHTML = "<i class='fas fa-check'></i>";
		span2.innerHTML = "<i class='fas fa-plus'></i>";
		span3.innerHTML = "<i class='fas fa-plus'></i>";
	}else if(num =="2"){
		samchunwonSale();
		span1.innerHTML = "<i class='fas fa-plus'></i>";
		span2.innerHTML = "<i class='fas fa-check'></i>";
		span3.innerHTML = "<i class='fas fa-plus'></i>";
	}else{
		ochunwonSale();
		span1.innerHTML = "<i class='fas fa-plus'></i>";
		span2.innerHTML = "<i class='fas fa-plus'></i>";
		span3.innerHTML = "<i class='fas fa-check'></i>";
	}
}
</script>
	
</script>
</html>

