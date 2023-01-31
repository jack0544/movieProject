package com.first.movie.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.first.movie.dao.BDAO;
import com.first.movie.dao.CDAO;
import com.first.movie.dto.COMMENT;
import com.first.movie.dto.MOVIE;

@Service
public class BService {

	private ModelAndView mav = new ModelAndView();

	@Autowired
	private BDAO bdao;

	@Autowired
	private CDAO cdao;

	@Autowired
	private HttpSession session;

	@Autowired
	private HttpServletRequest request;

	// index (home 초기값)
	public ModelAndView home() {

		List<MOVIE> home1 = bdao.home1();
		List<MOVIE> home2 = bdao.home2();

		System.out.println("[4] DAO > service \nhome1 : " + home1);
		System.out.println("[4] DAO > service \nhome2 : " + home2);

		mav.addObject("home1", home1);
		mav.addObject("home2", home2);

		mav.setViewName("index");

		return mav;
	}

	public ModelAndView moviedetails(String movName, String theCity, String timTheName, String timStartDate) {

		// movName을 가지고 DAO로 이동
		MOVIE movie = bdao.moviedetails(movName);

		List<COMMENT> comment = cdao.commentList(movName);

		// movie이름의 movie값
		mav.addObject("movie", movie);
		mav.addObject("theCity", theCity);
		mav.addObject("timTheName", timTheName);
		mav.addObject("timStartDate", timStartDate);

		mav.addObject("commentList", comment);

		// movie-details주소로 이동
		mav.setViewName("movie-details");

		return mav;
	}

	public ModelAndView movieList() {

		List<MOVIE> movieList = bdao.movieList();
		mav.addObject("movieList", movieList);
		mav.setViewName("movie-list");
		return mav;
	}

}
