package com.first.movie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.first.movie.dto.MOVIE;
import com.first.movie.dto.MOVIENAME;
import com.first.movie.dto.THEATER;
import com.first.movie.dto.TIMEMOVIE;
import com.first.movie.service.SService;

@Controller
public class SController {
	ModelAndView mav = new ModelAndView();

	@Autowired
	SService sesvc;

	@RequestMapping(value = "/findCity", method = RequestMethod.POST)
	public @ResponseBody List<THEATER> findCity(@RequestParam("theCity") String theCity) {
		List<THEATER> atrem = sesvc.findName(theCity);
		return atrem;
	}

	// 도시로 영화관 OO점 찾는 메소드 [OO점,OO점,OO점]으로 반환
	@RequestMapping(value = "/findName", method = RequestMethod.POST)
	public @ResponseBody List findName(@RequestParam("theCity") String theCity) {
		List atrem = sesvc.findNames(theCity);
		return atrem;
	}

	// findmovie :영화 이름으로 영화 정보 가져오기
	@RequestMapping(value = "/findmovie", method = RequestMethod.POST)
	public @ResponseBody List<MOVIE> findmovie(@ModelAttribute MOVIENAME moviename) {
		System.out.println(moviename);
		List<MOVIE> movie = sesvc.findmovie(moviename);
		return movie;
	}

	// searchmovie:검색 버튼 눌렀을때
	@RequestMapping(value = "/searchmovie", method = RequestMethod.POST)
	public @ResponseBody List<TIMEMOVIE> searchmovie(@ModelAttribute TIMEMOVIE timemovie) {
		List<TIMEMOVIE> TM = sesvc.searchmovie(timemovie);
		return TM;
	}
	
	@RequestMapping(value = "/getAllList", method = RequestMethod.POST)
	public @ResponseBody List<MOVIE> getAllList() {
		List<MOVIE> TM = sesvc.getAllList();
		return TM;
	}

}