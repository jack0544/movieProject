package com.first.movie.dto;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class MEMBER {

	private String memId;		// 회원 아이디
	private String memPw ;		// 회원 비밀번호
	private String memName ;	// 회원 이름
	private String memBirth ;	// 회원 생년월일
	private String memPhone;	// 회원 전화번호
	
	private MultipartFile memProfile;	// 회원 프로필사진 등록
	private String memProfileName;		// 회원 프로필사진
	private String memCoupon;			// 회원 쿠폰
	
}
