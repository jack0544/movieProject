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
	<section class="banner-section">
		<div class="banner-bg bg_img bg-fixed"
			data-background="./resources/assets/images/banner/banner02.jpg"></div>
		<div class="container">
			<div class="banner-content">
				<h1 class="title bold">
					지금바로 <span class="color-theme">영화</span>예매하기
				</h1>
				<p>
					원하시는 지역과 영화관을 선택하시고, 날짜를 선택하시면, <br /> 해당일의 상영영화를 보실수 있습니다.
				</p>
			</div>
		</div>
	</section>
	<!-- ==========Banner-Section========== -->
	<!-- ==========Ticket-Search========== -->
	<section class="search-ticket-section padding-top pt-lg-0">
		<div class="container">
			<div class="search-tab bg_img"
				data-background="./resources/assets/images/ticket/ticket-bg01.jpg">
				<div class="row align-items-center mb--20">
					<div class="col-lg-6 mb-20">
						<div class="search-ticket-header">
							<h6 class="category">welcome to Boleto</h6>
							<h3 class="title">찾으시는 영화가 있나요?</h3>
						</div>
					</div>
				</div>
				<div class="tab-area">
					<div class="tab-item active">
						<form class="ticket-search-form">
							<div class="form-group large">
								<input type="text" id="schMovie" placeholder="영화 제목으로 검색">
								<button type="button" onclick="searchmovie()">
									<i class="fas fa-search"></i>
								</button>
							</div>
							<div class="form-group">
								<div class="thumb">
									<img src="./resources/assets/images/ticket/city.png"
										alt="ticket">
								</div>
								<span class="type">지역</span> <select class="select-bar"
									id="region" name="regions" onchange="selectCity()">
									<option value="">---------</option>
									<option value="서울">서울</option>
									<option value="인천">인천</option>
									<option value="경기">경기</option>
								</select>
							</div>
							<div class="form-group" id="Cinema">
								<div class="thumb">
									<img src="./resources/assets/images/ticket/cinema.png"
										alt="ticket">
								</div>
								<span class="type">영화관</span> <select class="select-bar"
									id="place">
									<option value="">---------</option>
								</select>
							</div>
							<div class="form-group" id="setDate">
								<div class="thumb">
									<img src="./resources/assets/images/ticket/date.png"
										alt="ticket">
								</div>
								<span class="type">날짜</span> <select class="select-bar"
									id="date">
									<option value="">---------</option>
								</select>
							</div>
						</form>
					</div>

				</div>
			</div>
		</div>
	</section>
	<!-- ==========Ticket-Search========== -->
	<!-- ==========Movie-Section========== -->
	<section class="movie-section padding-top padding-bottom">
		<div class="container">
			<div class="row flex-wrap-reverse justify-content-center">
				<div class="col-lg-9 mb-50 mb-lg-0">
					<div class="filter-tab tab">
						<div class="filter-area">
							<div class="filter-main">
								<div class="left">
									<div class="item">
										<span class="show">Show :</span><select class="select-bar"><option
												value="12">12</option>
											<option value="15">15</option>
											<option value="18">18</option>
											<option value="21">21</option>
											<option value="24">24</option>
											<option value="27">27</option>
											<option value="30">30</option></select>
									</div>
									<div class="item">
										<span class="show">Sort By :</span><select class="select-bar"><option
												value="showing">now showing</option>
											<option value="exclusive">exclusive</option>
											<option value="trending">trending</option>
											<option value="most-view">most view</option></select>
									</div>
								</div>
								<ul class="grid-button tab-menu">
									<li><i class="fas fa-th"></i></li>
									<li class="active"><i class="fas fa-bars"></i></li>
								</ul>
							</div>
						</div>
						<div class="tab-area">
							<div class="tab-item">
								<div class="row mb-10 justify-content-center" id="movie_List_2">
									<c:forEach var="list" items="${movieList}">
										<div class="col-sm-6 col-lg-4">
											<div class="movie-grid">
												<div class="movie-thumb c-thumb">
													<a href="#" onclick="movdetail('${list.movName}')"><img
														src="${list.movMainPicture}" alt="movie"></a>
												</div>
												<div class="movie-content bg-one">
													<h5 class="title m-0">
														<a href="#" onclick="movdetail('${list.movName}')">${list.movName}</a>
													</h5>
													<ul class="movie-rating-percent">
														<li><div class="thumb">
																<img src="./resources/assets/images/movie/tomato.png"
																	alt="Pre Egg">
															</div> <span class="content">${list.movPeScore}</span></li>
														<li><div class="thumb">
																<img src="./resources/assets/images/movie/cake.png"
																	alt="Golden Egg">
															</div> <span class="content">${list.movGeScore}</span></li>
													</ul>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
							<div class="tab-item active">
								<div class="movie-area mb-10" id="movie_List_1">
									<c:forEach var="list" items="${movieList}">
										<div class="movie-list">
											<div class="movie-thumb c-thumb">
												<a href="#" onclick="movdetail('${list.movName}')"
													class="w-100 bg_img h-100"> <img src="${list.movMainPicture}" alt="movie"></a>
											</div>
											<div class="movie-content bg-one">
												<h5 class="title">
													<a href="#" onclick="movdetail('${list.movName}')">${list.movName}</a>
												</h5>
												<p class="duration">${list.movRunTime}</p>
												<div class="movie-tags">
													<a href="#0">${list.movGenre}</a>
												</div>
												<div class="release">
													<span>개봉일 : </span><a href="#0">${list.movDate}</a>
												</div>
												<ul class="movie-rating-percent">
													<li><div class="thumb">
															<img src="./resources/assets/images/movie/tomato.png"
																alt="Pre Egg">
														</div> <span class="content">Pre Egg ${list.movPeScore}</span></li>
													<li><div class="thumb">
															<img src="./resources/assets/images/movie/cake.png"
																alt="Golden Egg">
														</div> <span class="content">Golden Egg
															${list.movGeScore}</span></li>
												</ul>
												<div class="book-area">
													<div class="book-ticket">
														<div class="react-item">
															<a href="#0"><div class="thumb">
																	<img src="./resources/assets/images/icons/heart.png"
																		alt="icons">
																</div></a>
														</div>
														<div class="react-item mr-auto">
															<a href="#0"><div class="thumb">
																	<img src="./resources/assets/images/icons/book.png"
																		alt="icons">
																</div> <span>book ticket</span></a>
														</div>
														<div class="react-item">
															<a href="${list.movTeaserUrl}" class="video-popup"><div
																	class="thumb">
																	<img
																		src="./resources/assets/images/icons/play-button.png"
																		alt="icons">
																</div> <span>watch trailer</span></a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
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
	<script>
	
	function selectCity() {
		let theCity = $("#region").val();
		if(!theCity){
			var textchat="<div class=\"thumb\">"
				+"<img src=\"./resources/assets/images/ticket/cinema.png\" alt=\"ticket\">"
				+"</div>"
				+"<span class=\"type\">영화관</span>"
				+"<select class=\"nice-select\" id=\"place\">"
				+"<option value=\"\" style='color:black;font-weight:bold;'>-------</option>"
				+"</select>";
			document.getElementById("Cinema").innerHTML = textchat;
			var setDatechat="<div class=\"thumb\"><img src=\"./resources/assets/images/ticket/date.png\" alt=\"ticket\"></div>"
				+"<span class=\"type\">날짜</span>"
				+"<select class=\"nice-select\" id=\"date\">"
				+"<option value=\"\" style='color:black;font-weight:bold;'>-------</option>"
				+"</select>";
			document.getElementById("setDate").innerHTML = setDatechat;
			$.ajax({
				type : "POST",
				url : "getAllList",
				data : {
				},
				dataType : "text",
				success : function(data) {
					var gAL=eval(data);
					showList(gAL);
										
				},
				error : function() {
					alert("findCity함수 통신실패!");
				}

			});
		}else{
		$.ajax({
			type : "POST",
			url : "findName",
			data : {
				"theCity" : theCity
			},
			dataType : "text",
			success : function(data) {
			var textchat="<div class=\"thumb\">"
			+"<img src=\"./resources/assets/images/ticket/cinema.png\" alt=\"ticket\">"
			+"</div>"
			+"<span class=\"type\">영화관</span>"
			+"<select class=\"nice-select\" id=\"place\" onchange=\"findtimemov()\">";
			var imf = eval(data);
					for(i of imf){
			textchat+="<option value='"+i+"' style='color:black;font-weight:bold;'>"+i+"</option>";
				}
					textchat+="</select>";
			document.getElementById("Cinema").innerHTML = textchat;
			Dateinter();
			},
			error : function() {
				alert("findCity함수 통신실패!");

			}

		});}
	}
	
	
	function showList(data){
		 var movtext="";
			var movtext1="";
			for(i in data){
				movtext +="<div class=\"movie-list\">"
						+"<div class=\"movie-thumb c-thumb\">"
						+"<a href=\"#\" onclick=\"movdetail('"+data[i].movName+"')\" class=\"w-100 bg_img h-100\" data-background=\"" + data[i].movMainPicture + "\">"
						+"		<img src=\"" + data[i].movMainPicture + "\" alt=\"movie\" stlye=\"width : auto ; \">"
						+"</a></div>"
						+"<div class=\"movie-content bg-one\">"
						+"<h5 =\"title\">"
						+"<a href=\"#\" onclick=\"movdetail('"+data[i].movName+"')\">"+data[i].movName+"</a>"
						+"</h5>"
						+"<p class=\"duration\">"+data[i].movRunTime+"</p>"
						+"<div class=\"movie-tags\">"
						+"<a href=\"#0\">"+data[i].movGenre+"</a>"
						+"</div>"
						+"<div class=\"release\">"
						+"<span>개봉일 : </span><a href=\"#0\">"+data[i].movDate+"</a></div>"
						+"<ul class=\"movie-rating-percent\"><li>"
						+"<div class=\"thumb\">"
						+"	<img src=\"./resources/assets/images/movie/tomato.png\" alt=\"Pre Egg\">"
						+"</div>"
						+"<span class=\"content\">"+ "Pre Egg "  + data[i].movPeScore + "</span></li>"
						+"<li><div class=\"thumb\">"
						+"	<img src=\"./resources/assets/images/movie/cake.png\" alt=\"Golden Egg\">"
						+"</div>"
						+"<span class=\"content\">"+ "Golden Egg " + data[i].movGeScore + "</span></li>"
						+"</ul>"
						+"<div class=\"book-area\">"
						+"<div class=\"book-ticket\">"
						+"<div class=\"react-item\">"
						+"	<a href=\"#0\"><div class=\"thumb\">"
						+"		<img src=\"./resources/assets/images/icons/heart.png\" alt=\"icons\">"
						+"		</div></a></div>"
						+"<div class=\"react-item mr-auto\">"
						+"	<a href=\"#0\"><div class=\"thumb\">"
						+"			<img src=\"./resources/assets/images/icons/book.png\" alt=\"icons\">"
						+"		</div>"
						+"		<span>book ticket</span>"
						+"</a></div>"
						+"<div class=\"react-item\">"
						+"<a href="+data[i].movTeaserUrl+" class=\"video-popup\"><div class=\"thumb\">"
						+"			<img src=\"./resources/assets/images/icons/play-button.png\" alt=\"icons\">"
						+"</div>"	
						+"<span>watch trailer</span></a>"
						+"</div></div></div></div></div>";
				
				movtext1+="<div class=\"col-sm-6 col-lg-4\">"
					+"<div class=\"movie-grid\">"
					+"<div class=\"movie-thumb c-thumb\">"
					+"<a href=\"#\" onclick=\"movdetail('"+data[i].movName+"')\">"
					+"<img src=\"" + data[i].movMainPicture + "\" alt=\"movie\">"
					+"</a></div>"
					+"<div class=\"movie-content bg-one\">"
					+"<h5 class=\"title m-0\">"
					+"<a href=\"#\" onclick=\"movdetail('"+data[i].movName+"')\">"+data[i].movName+"</a></h5>"
					+"<ul class=\"movie-rating-percent\">"
					+"	<li><div class=\"thumb\">"
					+"		<img src=\"./resources/assets/images/movie/tomato.png\" alt=\"Pre Egg\">"
					+"		</div> <span class=\"content\">" + data[i].movPeScore +"</span></li>"
					+"	<li><div class=\"thumb\">"
					+"			<img src=\"./resources/assets/images/movie/cake.png\" alt=\"Golden Egg\">"
					+"	</div> <span class=\"content\">" + data[i].movGeScore +"</span></li>"
					+"</ul></div></div></div>";
			}
			
			document.getElementById("movie_List_1").innerHTML = movtext;
			document.getElementById("movie_List_2").innerHTML = movtext1;
	 }

	
	//현재 날짜를 기준으로 날짜 부분에 5일 출력 
	function Dateinter(){
		let today = new Date();   
		let year = today.getFullYear(); // 년도
		let month = (today.getMonth()+1);  // 월
		let date = today.getDate();  // 날짜
		var setDatechat="<div class=\"thumb\"><img src=\"./resources/assets/images/ticket/date.png\" alt=\"ticket\"></div>"
		+"<span class=\"type\">날짜</span>"
		+"<select class=\"nice-select\" id=\"date\" onchange=\"findtimemov()\">";
		for(var i=0;i<5;i++){
			
			if((date+i)<10){
				setdate="0"+(date+i)+"일";
			}else if((date+i)>31){
				month=month+1;
				setdate=(date+i)+"일";
			}else{
				setdate=(date+i)+"일";
			}
			if(month<10){
				setmonth="0"+month+"월";
			}else if(month>12){
				setyear=year+1;
				setmonth=(month+1)+"월";
			}
			else{
				setmonth=month+"월";
			}
			setyear=year+"년";
			
			setDatechat+="<option value='"+setyear+setmonth+setdate+"' style='color:black;font-weight:bold;'>"+setyear+setmonth+setdate+"</option>";
		}
		setDatechat+="</select>";
		document.getElementById("setDate").innerHTML = setDatechat;
		findtimemov();
	}
	
	function findtimemov(){
		let timTheName = $("#place").val();
		let timStartDate = $("#date").val();
		$.ajax({
			type : "POST",
			url : "searchmovie",
			data : {
				"timTheName" : timTheName,
				"timStartDate" : timStartDate
			},
			dataType : "json",
			success : function(data) {
				const MovNames=[];
				for(var i in data){
					MovNames[i]=data[i].timMovName;}
				const movieNames = [...new Set(MovNames)];
				findmovie(movieNames);
			},
			error : function() {
				alert("findtimemov함수 통신실패!");
			}
		});
	}
	
	function findmovie(moNames){
		var movieN1=null;
		var movieN2=null;
		var movieN3=null;
		var movieN4=null;
		var movieN5=null;
		var movieN6=null;
		var movieN7=null;
		var movieN8=null;
		var movieN9=null;
		if(moNames[0]!=null){
			movieN1=moNames[0];
		}
		if(moNames[1]!=null){
			movieN2=moNames[1];
		}
		if(moNames[2]!=null){
			movieN3=moNames[2];
		}
		if(moNames[3]!=null){
			movieN4=moNames[3];
		}
		if(moNames[4]!=null){
			movieN5=moNames[4];
		}
		if(moNames[5]!=null){
			movieN6=moNames[5];
		}
		if(moNames[6]!=moNames){
			movieN7=moNames[6];
		}
		if(moNames[7]!=null){
			movieN8=moNames[7];
		}
		if(moNames[8]!=null){
			movieN9=moNames[8];
		}
	
		$.ajax({
			type: "POST",
			url: "findmovie",
			data: {"movieN1" : movieN1,
				"movieN2" : movieN2,
				"movieN3" : movieN3,
				"movieN4" : movieN4,
				"movieN5" : movieN5,
				"movieN6" : movieN6,
				"movieN7" : movieN7,
				"movieN8" : movieN8,
				"movieN9" : movieN9
						},
			dataType: "json",
			success: function (data) {
				showList(data);
			},
			error:function(){
				alert("findmovie함수 통신실패!");
			}
		});
	}
	
	function searchmovie(){
		let timTheName = $("#place").val();
		let timStartDate = $("#date").val();
		let timMovName = $("#schMovie").val();
		$.ajax({
			type : "POST",
			url : "searchmovie",
			data : {
				"timTheName" : timTheName,
				"timStartDate" : timStartDate,
				"timMovName" : timMovName
			},
			dataType : "json",
			success : function(data) {
				console.log("search에서 넘어온 데이타"+data);
				const MovNames=[];
				for(var i in data){
					MovNames[i]=data[i].timMovName;}
				const movieNames = [...new Set(MovNames)];
				findmovie(movieNames);
			},
			error : function() {
				alert("findtimemov함수 통신실패!");

			}

		});
		
	}
	
	function movdetail(movname){
		let theCity = $("#region").val();
		let timTheName = $("#place").val();
		let timStartDate = $("#date").val();
		
		location.href="movie-details?movName="+movname+"&&theCity="+theCity+"&&timTheName="+timTheName+"&&timStartDate="+timStartDate;
		
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