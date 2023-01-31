package com.first.movie.dto;

import lombok.Data;

@Data
public class TICKET {
	
	private String ticId;			// 아이디
	private int ticNum;				// 예매번호
	private String ticName;			// 회원명
	private String ticMovName;		// 영화이름
	private String ticTheName;		// 극장명
	private String ticStartDate;	// 예매한 날짜
	private String ticTimStart;		// 상영시간대
	private String ticSeatNum;		// 좌석번호
	private String ticMovPrice;		// 영화 가격
	private String ticTheRoom;		// 상영 관
}	