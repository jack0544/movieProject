package com.first.movie.dto;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class MOVIE {

	private String movName;
	private String movGenre;
	private String movAge;
	private String movDate;
	private String movRunTime;
	private String movCountry;
	private String movContext;
	private String movDirector;
	private String movActor1;
	private String movActor2;
	private String movActor3;
	private String movActor4;

	private MultipartFile movActorPic1File;
	private MultipartFile movActorPic2File;
	private MultipartFile movActorPic3File;
	private MultipartFile movActorPic4File;
	private String movActorPic1;
	private String movActorPic2;
	private String movActorPic3;
	private String movActorPic4;

	private MultipartFile movMainPictureFile;
	private MultipartFile movPicture1File;
	private MultipartFile movPicture2File;
	private MultipartFile movPicture3File;
	private MultipartFile movPicture4File;
	private MultipartFile movPicture5File;
	private MultipartFile movPicture6File;
	private String movMainPicture;
	private String movPicture1;
	private String movPicture2;
	private String movPicture3;
	private String movPicture4;
	private String movPicture5;
	private String movPicture6;

	private String movStar;
	private String movTickets;
	private int movRank;
	private String movPeScore;
	private String movGeScore;
	private String movTeaserUrl;
	
}
