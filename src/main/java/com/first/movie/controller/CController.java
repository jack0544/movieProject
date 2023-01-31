package com.first.movie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.first.movie.dto.COMMENT;
import com.first.movie.service.CService;

@Controller
@RequestMapping("/comment")
public class CController {

	// MemberService 연결
	@Autowired
	private CService csvc;
	
	// 평점 리스트
	@RequestMapping(value = "/cList", method = RequestMethod.POST)
	public @ResponseBody List<COMMENT> cList(@RequestParam("comMovie") String comMovie) {

		System.out.println("[1] comMovie : " + comMovie);
		
		List<COMMENT> cList = csvc.cList(comMovie);

		return cList;
	}
	
	// 평점 등록
	@RequestMapping(value = "/comWrite", method = RequestMethod.POST)
	public @ResponseBody List<COMMENT> comWrite(@ModelAttribute COMMENT comment) {

		System.out.println("[1] commnet : " + comment);

		List<COMMENT> cList = csvc.comWrite(comment);

		return cList;
	}

	// 평점 좋아요
	@RequestMapping(value = "/comGood", method = RequestMethod.POST)
	public @ResponseBody List<COMMENT> comGood(@ModelAttribute COMMENT comment) {

		System.out.println("[1] comNum : " + comment);

		List<COMMENT> cList = csvc.comGood(comment);

		return cList;
	}

	// 평점 싫어요
	@RequestMapping(value = "/comBad", method = RequestMethod.POST)
	public @ResponseBody List<COMMENT> comBad(@ModelAttribute COMMENT comment) {

		System.out.println("[1] comNum : " + comment);

		List<COMMENT> cList = csvc.comBad(comment);

		return cList;
	}

}
