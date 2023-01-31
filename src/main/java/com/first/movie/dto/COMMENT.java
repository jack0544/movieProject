package com.first.movie.dto;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class COMMENT {
	
	private int comNum;				// 댓글번호
	private String comMovie;		// 영화명
	private String comWriter;		// 작성자 
	private MultipartFile comProfile;	// 프로필 파일	
	private String comProfileName;	// 프로필사진
	private String comDate;			// 작성시간
	private String comContent;		// 댓글내용
	private int comStar;			// 평점
	private int comGood;			// 좋아요 수
	private int comBad;				// 싫어요 수
	
}