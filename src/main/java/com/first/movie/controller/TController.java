package com.first.movie.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.first.movie.dto.MEMBER;
import com.first.movie.dto.TICKET;
import com.first.movie.service.MService;
import com.first.movie.service.TService;


@Controller
public class TController {
	// ModelAndView 객체 생성
	private ModelAndView mav = new ModelAndView();

	// MemberService 연결
	@Autowired
	private TService tsvc;

	@Autowired
	private HttpSession session;

	@RequestMapping(value = "/ticList", method = RequestMethod.GET)
	public ModelAndView ticList(@RequestParam("ticId") String ticId) {

		System.out.println("[1] jsp → controller \n ticId : " + ticId);

		mav = tsvc.ticList(ticId);

//			System.out.println("[5] service → controller \n mav : " + mav);

		return mav;
	}

}
