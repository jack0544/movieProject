<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
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
<style>
.selectStar {
	background-color: #red;
}
</style>
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
	<c:choose>
	<c:when test="${movie.movPicture1 == ' '}">
	<section class="details-banner bg_img"
		data-background="./resources/assets/images/banner/banner02.jpg">
	</c:when>
	<c:otherwise>
	<section class="details-banner bg_img"
		data-background="${movie.movPicture1}">
	</c:otherwise>
	</c:choose>
	
		<div class="container">
			<div class="details-banner-wrapper">
				<div class="details-banner-thumb">

					<!-- 메인 포스터 이미지, cgv공식 예고편 a태그 -->
					<img src="${movie.movMainPicture}" alt="movie"><a
						href="${movie.movTeaserUrl}" class="video-popup"><img
						src="./resources/assets/images/movie/video-button.png" alt="movie"></a>
				</div>
				<div class="details-banner-content offset-lg-3">
					<!-- 영화 이름 -->
					<h3 class="title" id="movName">${movie.movName}</h3>
					<!-- 영화 장르 버튼 -->
					<a href="#0" class="button">${movie.movGenre}</a>
					<div class="social-and-duration">
						<div class="duration-area">
							<div class="item">
								<!-- 영화 개봉일 -->
								<i class="fas fa-calendar-alt"></i><span>${movie.movDate}</span>
							</div>
							<div class="item">
								<!-- 영화 러닝타임 -->
								<i class="far fa-clock"></i><span>${movie.movRunTime}</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ==========Banner-Section========== -->
	<!-- ==========Book-Section========== -->
	<section class="book-section bg-one">
		<div class="container">
			<div class="book-wrapper offset-lg-3">
				<div class="left-side">
					<div class="item">
						<div class="item-header">
							<div class="thumb">
								<img src="./resources/assets/images/egg/tomato.png" alt="movie">
							</div>
							<div class="counter-area">
								<span class="counter-item odometer"
									data-odometer-final="${movie.movPeScore}">0</span>
							</div>
						</div>
						<p>Pre Egg</p>
					</div>
					<div class="item">
						<div class="item-header">
							<div class="thumb">
								<img src="./resources/assets/images/egg/cake.png" alt="movie">
							</div>
							<div class="counter-area">
								<span class="counter-item odometer"
									data-odometer-final="${movie.movGeScore}">0</span>
							</div>
						</div>
						<p>Golden Egg</p>
					</div>
					<div class="item">
						<div class="item-header">
							<%-- <c:choose>
								<c:when test="${movie.movStar > 4}">
									<div class="rated">
										<i class="fas fa-heart"></i><i class="fas fa-heart"></i><i
											class="fas fa-heart"></i><i class="fas fa-heart"></i><i
											class="fas fa-heart"></i>
									</div>
								</c:when>

								<c:when test="${movie.movStar > 3}">
									<div class="rated">
										<i class="fas fa-heart"></i><i class="fas fa-heart"></i><i
											class="fas fa-heart"></i><i class="fas fa-heart"></i>
									</div>
									<div class="rated rate-it">
										<i class="fas fa-heart"></i>
									</div>
								</c:when>

								<c:when test="${movie.movStar > 2}">
									<div class="rated">
										<i class="fas fa-heart"></i><i class="fas fa-heart"></i><i
											class="fas fa-heart"></i>
									</div>
									<div class="rated rate-it">
										<i class="fas fa-heart"></i><i class="fas fa-heart"></i>
									</div>
								</c:when>

								<c:when test="${movie.movStar > 1}">
									<div class="rated">
										<i class="fas fa-heart"></i><i class="fas fa-heart"></i>
									</div>
									<div class="rated rate-it">
										<i class="fas fa-heart"></i><i class="fas fa-heart"></i><i
											class="fas fa-heart"></i>
									</div>
								</c:when>

								<c:when test="${movie.movStar > 0}">
									<div class="rated">
										<i class="fas fa-heart"></i>
									</div>
									<div class="rated rate-it">
										<i class="fas fa-heart"></i><i class="fas fa-heart"></i><i
											class="fas fa-heart"></i><i class="fas fa-heart"></i>
									</div>
								</c:when>
								<c:otherwise>
									<div class="rated rate-it">
										<i class="fas fa-heart"></i><i class="fas fa-heart"></i> <i
											class="fas fa-heart"></i><i class="fas fa-heart"></i> <i
											class="fas fa-heart"></i>
									</div>
								</c:otherwise>
							</c:choose> --%>

							&nbsp; &nbsp;
							<h5 class="title">${movie.movStar}</h5>
						</div>
						<p>영화 평점</p>
					</div>
				</div>
				<a href="#" onclick="checkData('${movie.movName}')"  class="custom-button">영화예매</a>
			</div>
		</div>
	</section>
	<!-- ==========Book-Section========== -->
	<!-- ==========Movie-Section========== -->
	<section class="movie-details-section padding-top padding-bottom">
		<div class="container">
			<div class="row justify-content-center flex-wrap-reverse mb--50">
				
				<div class="col-lg-9 mb-50">
					<div class="movie-details">
						<h3 class="title">스틸컷</h3>
						<div class="details-photos owl-carousel">
							
							<div class="thumb">
								<a href="${movie.movPicture1}" class="img-pop"><img
									src="${movie.movPicture1}" alt="movie"></a>
							</div>
							<div class="thumb">
								<a href="${movie.movPicture2}" class="img-pop"><img
									src="${movie.movPicture2}" alt="movie"></a>
							</div>
							<div class="thumb">
								<a href="${movie.movPicture3}" class="img-pop"><img
									src="${movie.movPicture3}" alt="movie"></a>
							</div>
							<div class="thumb">
								<a href="${movie.movPicture4}" class="img-pop"><img
									src="${movie.movPicture4}" alt="movie"></a>
							</div>
							<div class="thumb">
								<a href="${movie.movPicture5}" class="img-pop"><img
									src="${movie.movPicture5}" alt="movie"></a>
							</div>
							<div class="thumb">
								<a href="${movie.movPicture6}" class="img-pop"><img
									src="${movie.movPicture6}" alt="movie"></a>
							</div>
						</div>
						<div class="tab summery-review">
							<ul class="tab-menu">
								<li class="active">주요정보</li>
								<li>한줄평</li>
							</ul>
							<div class="tab-area">
								<div class="tab-item active">
									<div class="item">
										<h5 class="sub-title">줄거리</h5>
										<p>${movie.movContext}</p>
									</div>
									<div class="item">
										<div class="header">
											<h5 class="sub-title">배우</h5>
											<div class="navigation">
												<div class="cast-prev">
													<i class="flaticon-double-right-arrows-angles"></i>
												</div>
												<div class="cast-next">
													<i class="flaticon-double-right-arrows-angles"></i>
												</div>
											</div>
										</div>
										<div class="casting-slider owl-carousel">
											<div class="cast-item">

												<a href="#0"><img src="${movie.movActorPic1}" alt="cast"></a>

												<div class="cast-content">
													<h6 class="cast-title">
														<a href="#0">${movie.movActor1}</a>
													</h6>
													<span class="cate">주연</span>
												</div>
											</div>
											<div class="cast-item">

												<a href="#0"><img src="${movie.movActorPic2}" alt="cast"></a>

												<div class="cast-content">
													<h6 class="cast-title">
														<a href="#0">${movie.movActor2}</a>
													</h6>
													<span class="cate">주연</span>
												</div>
											</div>
											<div class="cast-item">

												<a href="#0"><img src="${movie.movActorPic3}" alt="cast"></a>

												<div class="cast-content">
													<h6 class="cast-title">
														<a href="#0">${movie.movActor3}</a>
													</h6>
													<span class="cate">주연</span>
												</div>
											</div>
											<div class="cast-item">

												<a href="#0"><img src="${movie.movActorPic4}" alt="cast"></a>

												<div class="cast-content">
													<h6 class="cast-title">
														<a href="#0">${movie.movActor4}</a>
													</h6>
													<span class="cate">주연</span>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="tab-item">
									<h5>평점 등록</h5>
									<div class="movie-review-item" style="padding-top : 30px;">
										<div>
											<select name="comStar" id="comStar"
												style='background-color: #001432; color: white;'>
												<option value="5">5점</option>
												<option value="4">4점</option>
												<option value="3">3점</option>
												<option value="2">2점</option>
												<option value="1">1점</option>
											</select>
											<textarea name="comContent" id="comContent" cols="90"
												rows="5" style='background-color: #001432; color : white;' placeholder="한줄평을 작성해주세요"></textarea>
											<br />
											<button onclick="comWrite() "
												style='background-color: #003CBE;'>평점 등록</button>
										</div>
									</div>
									<div id="comArea"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
	</section>
	<!-- ==========Movie-Section========== -->
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
<script src="https://code.jquery.com/jquery-3.6.1.js"></script>
<script>

// 최초시작 평점리스트 불러오기
$(document).ready(function comFirstList(){
	let comMovie = "${movie.movName}";
	
	$.ajax({
		type : "POST",
		url : "comment/cList",
		data : {
			"comMovie" : comMovie
		},
		dataType : "text",
		success : function(list){
			var listm = eval(list);
			commentList(listm);
			console.log(listm);
		},
		error : function(){
			alert("최초 평점 불러오기 통신 실패!");
		}
	});
});
	
//평점 리스트
function commentList(list) {
	let output = "";

	for ( let i in list) {
		output += "<div class=\"movie-review-item\" style=\"padding-top : 30px; \">";
		output += "<div class=\"author\">";
		output += "<div class=\"thumb\">";
		output += "<a href=\"#0\"><img src=\"./resources/profile/" + list[i].comProfileName + "\"";
		output += " alt=\"cast\"></a>";
		output += "</div>";
		output += "<div class=\"movie-review-info\">";
		output += "<span class=\"reply-date\">" + list[i].comDate
				+ "</span>";
		output += "<h6 class=\"subtitle\">";
		output += "<a href=\"#0\">" + list[i].comWriter + "</a>";
		output += "</h6>";
		output += "</div>";
		output += "</div>";
		output += "<div class=\"movie-review-content\">";
		output += "<div class=\"review\">";
		output += "<div class=\"rated\">";
		for (var j = 0; j < list[i].comStar; j++) {
			output += "<i class=\"flaticon-favorite-heart-button\"></i>";
		}
		output += "</div>";
		output += "</div>";
		output += "<p>" + list[i].comContent + "</p>";
		output += "<div class=\"review-meta\">";
		output += "<a onclick=\"comGood(" + list[i].comNum
				+ ")\"><i class=\"flaticon-hand\"></i><span>"
				+ list[i].comGood + "</span></a>";
		output += "<a onclick=\"comBad("
				+ list[i].comNum
				+ ")\" class=\"dislike\"><i class=\"flaticon-dont-like-symbol\"></i><span>"
				+ list[i].comBad + "</span></a>";
		output += "</div>";
		output += "</div>";
		output += "</div>";
	}
	document.getElementById("comArea").innerHTML = output;
}
	
	// 평점 작성
	function comWrite() {

		let comMovie = "${movie.movName}";
		let comContent = $("#comContent").val();
		let comStar = $("#comStar").val();
		let comWriter = '<%=(String)session.getAttribute("loginId")%>';
		let comProfileName = '<%=(String)session.getAttribute("Idimg")%>';
		
		if(comWriter == 'null'){
			alert('로그인 후 사용해주세요');
		} else{
		
		console.log(comContent);
		console.log(comStar);
		console.log(comMovie);
		console.log(comWriter);
		console.log(comProfileName);
		
		$.ajax({
			type : "POST",
			url : "comment/comWrite",
			data : {
				"comMovie" : comMovie,
				"comStar" : comStar,
				"comContent" : comContent,
				"comWriter" : comWriter,
				"comProfileName" : comProfileName
			},
			dataType : "json",
			success : function(list) {
				commentList(list);
				alert('작성했습니다!')
			},
			error : function() {
				alert('평점 작성 통신 실패!');
			}
		})
		}
	}

	// 평점 좋아요
	function comGood(comNum) {
	
		let comMovie = "${movie.movName}";
		
		console.log(comNum);

		$.ajax({
			type : "POST",
			url : "comment/comGood",
			data : {
				"comMovie" : comMovie,
				"comNum" : comNum
			},
			dataType : "json",
			success : function(list) {
				commentList(list);
				alert('좋아요 성공!');
			},
			error : function() {
				alert('개추 실패!');
			}
		})
	}
	
	// 평점 싫어요
	function comBad(comNum) {
	
		let comMovie = "${movie.movName}";

		console.log(comNum);

		$.ajax({
			type : "POST",
			url : "comment/comBad",
			data : {
				"comMovie" : comMovie,
				"comNum" : comNum
			},
			dataType : "json",
			success : function(list) {
				commentList(list);
				alert('싫어요 성공!');
			},
			error : function() {
				alert('비추 실패!');
			}
		})
	}
	
	function checkData(timMovName){
		var theCity="${theCity}";
		var timTheName="${timTheName}";
		var timstartDate="${timStartDate}";
		
		if(${loginId!=null}){
		
		if(theCity){
			location.href="movList?timMovName="+timMovName+"&theCity="+theCity+"&timTheName="+timTheName+"&timStartDate="+timstartDate;
		}else{
			alert("영화관과 날짜를 선택하고 사용해주세요.");
			location.href="movie-list";
		}
			
		} else{
			alert('로그인 후 이용해주세요')
		}
		
	}
	
</script>
</html>