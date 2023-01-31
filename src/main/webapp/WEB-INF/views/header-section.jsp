<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<header class="header-section">
		<div class="container">
			<div class="header-wrapper">
				<div class="logo">
					<a href="index"><img src="./resources/assets/images/logo/logo.png"
						alt="logo"></a>
				</div>
				<ul class="menu">
					<li><a href="index">메인 화면</a></li>
					<li><a href="movie-list">영화 List</a>
					<%-- 
						<ul class="submenu">
							<li><a href="movie-list">영화 리스트</a></li>
							 <li><a href="movie-details">영화 정보</a></li> 
							 <li><a href="movList?timMovName=압꾸정">영화 티켓예매</a></li> 
							 <li><a href="movie-seat-plan">영화 좌석</a></li> 
							
							 <li><a href="payList?payId=${loginId}">결제하기</a></li> 
						</ul></li> --%>
					<li><a href="#0">회원 정보</a>
						<ul class="submenu">
							<c:if test="${loginId == null}">
							<li><a href="sign-in">로그인</a></li>
							<li><a href="sign-up">회원가입</a></li>
							</c:if>
							<c:if test="${loginId == 'admin'}">
							<li><a href="sports-ticket">영화정보 크롤링</a></li>
							</c:if>
							<c:if test="${loginId != null}">
							<li><a href="mView?memId=${loginId}">마이페이지</a></li>
							<li><a href="ticList?ticId=${loginId}">예매한 내역</a></li>
							</c:if>
						</ul></li>
					<li><a href="contact">이메일 문의</a></li>
					<c:if test="${loginId == null}">
					<li class="header-button pr-0"><a href="sign-up">회원가입</a></li>
					<li class="header-button pr-0"><a href="sign-in">로그인</a></li>
					</c:if>	
					<c:if test="${loginId != null}">				
					<li class="header-button pr-0"><a href="mLogout">로그아웃</a></li>
					</c:if>
				</ul>
				<div class="header-bar d-lg-none">
					<span></span><span></span><span></span>
				</div>
			</div>
		</div>
	</header>
</body>
</html>