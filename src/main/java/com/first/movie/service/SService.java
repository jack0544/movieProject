package com.first.movie.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.first.movie.dao.SDAO;
import com.first.movie.dto.MOVIE;
import com.first.movie.dto.MOVIENAME;
import com.first.movie.dto.THEATER;
import com.first.movie.dto.TIMEMOVIE;

@Service
public class SService {
	ModelAndView mav = new ModelAndView();

	@Autowired
	private SDAO sdao;

	@Autowired
	private HttpServletRequest request;

	public List<THEATER> findName(String theCity) {
		List<THEATER> atrem = sdao.findName(theCity);
		return atrem;
	}

	public List findNames(String theCity) {
		List atrem = sdao.findNames(theCity);
		return atrem;
	}

	public List<MOVIE> findmovie(MOVIENAME moviename) {
		List<MOVIE> movie = sdao.findmovie(moviename);
		return movie;
	}

	public List<TIMEMOVIE> searchmovie(TIMEMOVIE timemovie) {
		List<TIMEMOVIE> TM = sdao.searchmovie(timemovie);
		return TM;
	}
	
	public List<MOVIE> getAllList() {
		List<MOVIE> TM = sdao.getAllList();
		return TM;
	}

}