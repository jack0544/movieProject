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
<style>
li {
	list-style: none;
}

img {
	width: 200px;
	height: 200px;
}

.real-upload {
	display: none;
}

.image-preview {
	width: 200px;

}
</style>
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
	<!-- ==========Sign-In-Section========== -->
	<section class="account-section bg_img"
		data-background="./resources/assets/images/account/account-bg.jpg">
		<div class="container">
			<div class="padding-top padding-bottom">
				<div class="account-area">
					<div class="section-header-3">
						<span class="cate"><a href="index">welcome</a></span>
						<h2 class="title"><a href="index">회원정보 수정</a></h2>
					</div>
					<form class="account-form" action="mModify" method="POST" name="modiForm" enctype="multipart/form-data">
					<input type="hidden" name="memCoupon" value="null">
					<input type="hidden" name="memId" value="${member.memId}">
 					 <input type="hidden" name="memProfileName" value="${member.memProfileName}"> 
						
						<div class="form-group">
							<div id="imageUpload" class="type02">
						<img src="resources/profile/${member.memProfileName}" width="200px" />
					</div>
					
					<input type="hidden" name="memProfileName"
						value="${member.memProfileName}" readonly> 
						<input type="file" name="memProfile" class="real-upload" accept="image/*"
						required multiple>
					<ul class="image-preview"
						style="width: 100%; height: 100%; object-fit: cover"></ul>

						<div class="form-group text-center">							
					<span id="bt"><input type="button" class="upload" onclick="bt1()" value="사진업로드"></span>
						</div>

						</div>
						<div class="form-group">
							<label>아이디<span>
							*</span>
							</label>
							<br><strong>
							${member.memId }
							</strong>
						</div>
						<span id="check1"></span>
						<c:if test=""></c:if>
						<div class="form-group">
							<label for="비밀번호">비밀번호<span>*</span></label><input
								type="password" placeholder="Password" id="memPw" name="memPw" onkeyup="pwRegexp()" >
						</div>
						<span id="pwResult1"></span>
						<div class="form-group">
							<label for="비밀번호 확인">비밀번호 확인<span>*</span></label><input
								type="password" placeholder="Password" id="checkPw" onkeyup="pwCheck()" >
						</div>
						<span id="pwResult2"></span>
						<div class="form-group">
					
							<label for="이름">이름<span>*</span></label><input type="text" value="${member.memName }"
								placeholder="${member.memName }" id="memName" name="memName" >
						</div>
						<div class="form-group">
							<label for="생일">생일<span>*</span></label><input type="date" value="${member.memBirth }"
								name="memBirth" id="memBirth" >
						</div>
						<div class="form-group">
							<label for="휴대폰 번호">휴대폰 번호<span>*</span></label><input type="text" value="${member.memPhone }"
								placeholder="${member.memPhone }" id="memPhone" name="memPhone" onkeyup="checkId()" >
						</div>
						<div class="form-group checkgroup">
							<input type="checkbox" id="bal" name="bal" value="check"><label
								>개인정보 약관에 <a href="#0">동의합니다.
									</a> <a href="#0"></a></label>
						</div>
						<div class="form-group text-center">
							<input type="button" value="수정" onclick="checkConfirm()" value="가입">
						</div>
					</form>
					<div class="option">
						수정을 하고싶지 않나요? <a href="mView?memId=${loginId}">이전 페이지로</a>
					</div>				
				</div>
			</div>
		</div>
	</section>
	<!-- ==========Sign-In-Section========== -->
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
<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
<script>
function pwRegexp(){
	let memPw = document.getElementById("memPw").value;
	let pwResult1 = document.getElementById("pwResult1");
	
	let num = memPw.search(/[0-9]/);
	let eng = memPw.search(/[a-z]/);
	let spe = memPw.search(/[`~!@#$%^&*|\\\'\":;\/?]/);
	let spc = memPw.search(/\s/);
	
	console.log("num : " + num + " , eng : " + eng + " , spe : " + spe);

	
	if(memPw.length < 8 || memPw.length > 16){
		pwResult1.style.color = "#ff0000";
		pwResult1.innerHTML = "비밀번호는 8자리에서 16자리 이내로 입력해주세요.";
		return false;
		
	} else if(spc >= 0){
		pwResult1.style.color = "#ff0000";
		pwResult1.innerHTML = "비밀번호는 공백없이 입력해주세요.";
		return false;
	
	} else if(num < 0 || eng < 0 || spe < 0){
		pwResult1.style.color = "#ff0000";
		pwResult1.innerHTML = "영문, 숫자, 특수문자를 혼합하여 입력해주세요.";
		return false;
	
	} else {
		pwResult1.style.color = "#0000ff";
		pwResult1.innerHTML = "사용가능한 비밀번호 입니다.";
		return true;
	}
	

}

function pwCheck(){
	
	let memPw = document.getElementById("memPw").value;
	let checkPw = document.getElementById("checkPw").value;
	let pwResult2 = document.getElementById("pwResult2");
	
	if(memPw == checkPw){
		pwResult2.style.color = "#0000ff";
		pwResult2.innerHTML = "비밀번호가 일치합니다.";
		return true;
	} else {
		pwResult2.style.color = "#ff0000";
		pwResult2.innerHTML = "비밀번호가 일치하지 않습니다.";
		return false;
	}
	
	
}

function checkConfirm(){
	
	let memPw = document.getElementById("memPw").value;
	let memName = document.getElementById("memName").value;
	let memBirth = document.getElementById("memBirth").value;
	let memPhone = document.getElementById("memPhone").value;
	let bal = document.getElementById("bal").value;
	
	if(!pwRegexp() || !pwCheck()){
		
		alert('비밀번호를 확인해주세요!');
		
	} else if(memPw == null){
		
		alert('비밀번호를 입력후 수정버튼을 눌러주세요');
		
	}  else if (!document.getElementById("bal").checked) {
        alert('개인정보 약관에 동의해주세요');
    } else {
	
		alert('회원수정이 완료되었습니다.');
		modiForm.submit();
	}
}

function checkId(){
	let memId = document.getElementById("memId").value;
	// location.href = "idCheck?memId=" + memId;
	
	let check1 = document.getElementById("check1");
	
	$.ajax({
		type : "POST",
		url : "idoverlap",
		data : {
			"memId" : memId
		}, 
		dataType : "text", 
		success : function(result){
			if(result=="OK"){
				// 사용할 수 있는 아이디일 경우 실행
				check1.innerHTML = memId + "는 사용가능한 아이디";
				check1.style.color = "#0000ff";
				
			} else {
				// 사용할 수 없는 아이디일 경우 실행
				check1.innerHTML = memId + "는 이미 사용중인 아이디";
				check1.style.color = "#ff0000";
				
			}
		},
		error : function(){
			alert("idoverlap함수 통신실패!");
			
		}
		
	});

	
}

function getImageFiles(e) {
	const uploadFiles = [];
	const files = e.currentTarget.files;
	const imagePreview = document.querySelector('.image-preview');
	const docFrag = new DocumentFragment();
	 $('div.type02').remove()
	if ([...files].length >= 2) {
	  alert('이미지는 1개만 업로드가 가능합니다.');
	  return;
	}

	// 파일 타입 검사
	[...files].forEach(file => {
	  if (!file.type.match("image/.*")) {
		alert('이미지 파일만 업로드가 가능합니다.');
		return
	  }

	  // 파일 갯수 검사
	  if ([...files].length == 1) {
		uploadFiles.push(file);
		const reader = new FileReader();
		reader.onload = (e) => {
		  const preview = createElement(e, file);
		  imagePreview.appendChild(preview);
		};
		reader.readAsDataURL(file);
	  }
	});
  }

  function createElement(e, file) {
	  
	const li = document.createElement('li');
	const img = document.createElement('img');
	img.setAttribute('src', e.target.result);
	img.setAttribute('data-file', file.name);
	li.appendChild(img);

	return li;
  }

  const realUpload = document.querySelector('.real-upload');
  const upload = document.querySelector('.upload');
  
  

  upload.addEventListener('click', () => realUpload.click(
  ));

  realUpload.addEventListener('change', getImageFiles);

  function bt1(){
	  let bt = document.getElementById("bt");
	  bt.innerHTML = "";
  }
  
</script>
</html>