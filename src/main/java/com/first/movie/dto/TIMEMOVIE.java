package com.first.movie.dto;

import lombok.Data;

@Data
public class TIMEMOVIE {
	private String timMovName = ""; // 해당 상영시간 영화 이름
	private String timTheName = ""; // 해당 상영시간 극장 이름
	private String timTheRoom = ""; // 해당 상영시간 극장 0관
	private String timTheCity = ""; // 해당 상영시간 극장 도시
	private String timStartDate = "";	// 해당 상영시간 시작 날짜
	private String timCurTime = "";		// 해당 상영시간 현재 셀렉트된 시간대
    private String timStartTime1 = "";   // 해당 상영시간 시작 시간대1
    private String timStartTime2 = "";   // 해당 상영시간 시작 시간대2
    private String timStartTime3 = "";   // 해당 상영시간 시작 시간대3
    private String timStartTime4 = "";   // 해당 상영시간 시작 시간대4
    private String timMinsLeft = "";		// 시작 시간대~ 지금시간 남은 시간
    private int timLeftSeat;        // 해당 상영시간 남은 좌석 수
    private String timLeftList = "";		// 남은 좌석 리스트
    private String timBackPic = "";		// 배경 화면 외부주소
    private String timPoster = "";		// 같이넣기
    private String timCost = "";
}
