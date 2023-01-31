package com.first.movie.dto;

import lombok.Data;

@Data
public class PAY {
	
	private String payPic;			// 영화 포스터
	private String payId;			// 아이디
	private String payName;			// 회원명
	private String payMovName;		// 영화이름
	private String payTheName;		// 극장명
	private String payStartDate;	// 예매한 날짜
	private String payTimStart;		// 상영시간대
	private String paySeatNum;		// 좌석번호
	private String payMovPrice;		// 영화 가격
	private String payTheRoom;		// 상영 관
	private String payLeftList;		// 결제 후 남는 좌석리스트
	
}
