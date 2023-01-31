<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
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
	<!-- ==========Window-Warning-Section========== -->
	<section class="window-warning inActive">
		<div class="lay"></div>
	</section>
	<!-- ==========Window-Warning-Section========== -->
	<!-- ==========Banner-Section========== -->
	<section class="details-banner hero-area bg_img"
		data-background="${timBackPic}">
		<div class="container">
			<div class="details-banner-wrapper">
				<div class="details-banner-content">
					<h3 class="title">${timMovName}</h3>
				</div>
			</div>
		</div>
	</section>
	<!-- ==========Banner-Section========== -->
	<!-- ==========Book-Section========== -->
	<section class="book-section bg-one">
		<div class="container">
			<form class="ticket-search-form two">
				<div class="form-group">
					<div class="thumb">
						<img src="./resources/assets/images/ticket/city.png" alt="ticket">
					</div>
					<span class="type">도시</span><select class="select-bar" id="region"
						onchange="showCinema()">
						
						<option value="${theCity}" selected>${theCity}</option>
						<c:if test="${theCity ne '인천'}">
							<option value="인천">인천</option>
						</c:if>
						<c:if test="${theCity ne '서울'}">
							<option value="서울">서울</option>
						</c:if>
						<c:if test="${theCity ne '경기'}">
							<option value="경기">경기</option>
						</c:if>

					</select>
				</div>
				<div class="form-group" id="setDate">
					<div class="thumb">
						<img src="./resources/assets/images/ticket/date.png" alt="ticket">
					</div>
					<span class="type">날짜</span> <select class="select-bar" id="date"
						onchange="RoomList()">
						<option value=""></option>
					</select>
				</div>
				<div class="form-group" id="Cinema">
					<div class="thumb">
						<img src="./resources/assets/images/ticket/cinema.png"
							alt="ticket">
					</div>
					<span class="type">영화관</span> <select class="select-bar" id="place"
						onchange="RoomList()">
						<option value=""></option>
					</select>
				</div>
			</form>
		</div>
	</section>
	<!-- ==========Book-Section========== -->
	<!-- ==========Movie-Section========== -->
	<div class="ticket-plan-section padding-bottom padding-top">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-9 mb-5 mb-lg-0" id="theseat">
					<ul class="seat-plan-wrapper bg-five">
						<c:forEach var="tmData" items="${tm}">
							<li><div class="movie-name">
									<div class="icons">
										<i class="far fa-heart"></i><i class="fas fa-heart"></i>
									</div>
									<a href="#0" class="name">${tmData.timTheRoom}</a>
									<div class="location-icon">
										<i class="fas fa-map-marker-alt"></i>
									</div>
								</div>
								<div class="movie-schedule">
									<div class="item"
										onclick="location.href = 'movie-seat-plan?timMovName=${tmData.timMovName}&timTheName=${tmData.timTheName}&timTheRoom=${tmData.timTheRoom}&timStartDate=${tmData.timStartDate}&timCurTime=${tmData.timStartTime1}'">${tmData.timStartTime1}</div>
									<div class="item"
										onclick="location.href = 'movie-seat-plan?timMovName=${tmData.timMovName}&timTheName=${tmData.timTheName}&timTheRoom=${tmData.timTheRoom}&timStartDate=${tmData.timStartDate}&timCurTime=${tmData.timStartTime2}'">${tmData.timStartTime2}</div>
									<div class="item"
										onclick="location.href = 'movie-seat-plan?timMovName=${tmData.timMovName}&timTheName=${tmData.timTheName}&timTheRoom=${tmData.timTheRoom}&timStartDate=${tmData.timStartDate}&timCurTime=${tmData.timStartTime3}'">${tmData.timStartTime3}</div>
									<div class="item"
										onclick="location.href = 'movie-seat-plan?timMovName=${tmData.timMovName}&timTheName=${tmData.timTheName}&timTheRoom=${tmData.timTheRoom}&timStartDate=${tmData.timStartDate}&timCurTime=${tmData.timStartTime4}'">${tmData.timStartTime4}</div>
								</div></li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- ==========Movie-Section========== -->
	<!-- ==========Newslater-Section========== -->
	<footer class="footer-section">

		<div class="container">
			<div class="footer-top">
				<div class="logo">
					<a href="index-1"><img
						src="./resources/assets/images/footer/footer-logo.png" alt="footer"></a>
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
							Copyright Â© 2020.All Rights Reserved By <a href="#0">Boleto </a>
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
$(document).ready(function ticketPlanStart(){
	showCinema();
});

function showCinema(){
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
	+"<select class=\"nice-select\" id=\"place\" onchange=\"RoomList()\">";
	var imf = eval(data);
			for(i of imf){
				if(i=="${timTheName}"){
					textchat+="<option value='"+i+"' style='color:black;font-weight:bold;' selected>"+i+"</option>";
				}
				else{
	textchat+="<option value='"+i+"' style='color:black;font-weight:bold;'>"+i+"</option>";}
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

function Dateinter(){
let today = new Date();   
let year = today.getFullYear(); // 년도
let month = (today.getMonth()+1);  // 월
let date = today.getDate();  // 날짜
var setDatechat="<div class=\"thumb\"><img src=\"./resources/assets/images/ticket/date.png\" alt=\"ticket\"></div>"
+"<span class=\"type\">날짜</span>"
+"<select class=\"nice-select\" id=\"date\" onchange=\"RoomList()\">";
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
RoomList();
}

function RoomList(){
let timTheName = $("#place").val();
let timStartDate = $("#date").val();
let timMovName = "${timMovName}";
//bodymovList
$.ajax({
	type : "POST",
	url : "bodymovList",
	data : {
		"timTheName" : timTheName,
		"timStartDate" : timStartDate,
		"timMovName" : timMovName
		
	},
	dataType : "json",
	success : function(data) {
	
	var text="<ul class=\"seat-plan-wrapper bg-five\">";
	for(i in data){
		
		if(i == 0){
			
		}else if(data[i].timTheRoom == data[i-1].timTheRoom){
			continue;
		}else{
			
		}
		
	text+="<li><div class=\"movie-name\">"
		+"<div class=\"icons\">"
		+"<i class=\"far fa-heart\"></i><i class=\"fas fa-heart\"></i>"
		+"</div>"
		+"<a href=\"#0\" class=\"name\">"+data[i].timTheRoom+"</a>"
		+"<div class=\"location-icon\">"
		+"<i class=\"fas fa-map-marker-alt\"></i>"
		+"</div>"
		+"</div>"
		+"<div class=\"movie-schedule\">";
		if(data[i].timStartTime1 == ""){
				
		}else{
		text += "<div class=\"item\" onclick=\"location.href = 'movie-seat-plan?timMovName="+data[i].timMovName+"&timTheName="+data[i].timTheName+"&timTheRoom="+data[i].timTheRoom+"&timStartDate="+data[i].timStartDate+"&timCurTime="+data[i].timStartTime1+"'\">"+data[i].timStartTime1+"</div>"
		}
		if(data[i].timStartTime2 == ""){

		}else{
			text += "<div class=\"item\" onclick=\"location.href = 'movie-seat-plan?timMovName="+data[i].timMovName+"&timTheName="+data[i].timTheName+"&timTheRoom="+data[i].timTheRoom+"&timStartDate="+data[i].timStartDate+"&timCurTime="+data[i].timStartTime2+"'\">"+data[i].timStartTime2+"</div>";
		}
		if(data[i].timStartTime3 == ""){
			
		}else{
		text +="<div class=\"item\" onclick=\"location.href = 'movie-seat-plan?timMovName="+data[i].timMovName+"&timTheName="+data[i].timTheName+"&timTheRoom="+data[i].timTheRoom+"&timStartDate="+data[i].timStartDate+"&timCurTime="+data[i].timStartTime3+"'\">"+data[i].timStartTime3+"</div>"
		}
		if(data[i].timStartTime4 == ""){
			
		}else{
		text +="<div class=\"item\" onclick=\"location.href = 'movie-seat-plan?timMovName="+data[i].timMovName+"&timTheName="+data[i].timTheName+"&timTheRoom="+data[i].timTheRoom+"&timStartDate="+data[i].timStartDate+"&timCurTime="+data[i].timStartTime4+"'\">"+data[i].timStartTime4+"</div>"
		}
		text +="</div></li>";
		}
		text+="</ul>";
		document.getElementById("theseat").innerHTML = text;
		
	},
	error : function() {
		alert("bodymovList함수 통신실패!");

	}
});
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