package com.first.movie.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.first.movie.dto.TIMEMOVIE;
import com.first.movie.service.TMService;

@Controller
public class TMController {
	
	// ModelAndView 객체 생성
		private ModelAndView mav = new ModelAndView();

		// MemberService 연결
		@Autowired
		private TMService tmsvc;

		@Autowired
		private HttpSession session;
	
		@RequestMapping(value = "/movList", method = RequestMethod.GET)
		public ModelAndView movList(@RequestParam("theCity") String theCity,@ModelAttribute TIMEMOVIE tmovie) {
	
	
			mav = tmsvc.movList(tmovie,theCity);
	
	
			return mav;
		}
@RequestMapping(value = "/bodymovList", method = RequestMethod.POST)
		public @ResponseBody List<TIMEMOVIE> bodymovList(@ModelAttribute TIMEMOVIE tmovie) {		
			List<TIMEMOVIE> btm = tmsvc.bmovList(tmovie);		
			return btm;
		}
	
	
	
	
	
}