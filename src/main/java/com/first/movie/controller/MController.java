package com.first.movie.controller;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
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
import com.first.movie.service.MService;


@Controller
public class MController {
	// ModelAndView 객체 생성
	private ModelAndView mav = new ModelAndView();

	// MemberService 연결
	@Autowired
	private MService msvc;

	@Autowired
	private HttpSession session;


	// 회원가입 홈페이지
	@RequestMapping(value = "/mJoinForm", method = RequestMethod.GET)
	public String mJoinForm() {
		return "M_Join";
	}

	// mCheckId : 아이디 중복체크
	@RequestMapping(value = "/mCheckId", method = RequestMethod.GET)
	public ModelAndView McheckId(@RequestParam("memId") String memId) {

		mav = msvc.mCheckId(memId);

		return mav;
	}

	// mJoin : 회원가입
	@RequestMapping(value = "/mJoin", method = RequestMethod.POST)
	public ModelAndView mJoin(@ModelAttribute MEMBER member) throws IllegalStateException, IOException {

		System.out.println("[1] jsp → controller \n member : " + member);

		mav.setViewName("redirect:/index");

		mav = msvc.mJoin(member);

		return mav;
	}

	// mLogin
	@RequestMapping(value = "/mLogin", method = RequestMethod.POST)
	public ModelAndView mLogin(@ModelAttribute MEMBER member) throws IllegalStateException, IOException {

		System.out.println("[1] jsp → controller \n member : " + member);

		mav = msvc.mLogin(member);

		return mav;
	}

	// mLogout : 로그아웃
		@RequestMapping(value = "/mLogout", method = RequestMethod.GET)
		public String mLogout() {

			session.invalidate();

			return "redirect:/index";
		}


	// mList : 페이징 처리 & 리스트
	@RequestMapping(value = "/mList", method = RequestMethod.GET)
	public ModelAndView mList(@RequestParam(value = "page", required = false, defaultValue = "1") int page,
			@RequestParam(value = "limit", required = false, defaultValue = "5") int limit) {
		// page를 필수로 가져와야 하나 -> false
		/*
		 * String page1 = request.getParameter("page"); if(page1 == null) { int page =
		 * 1; } else { int page = Integer.parseInt(page1); }
		 */

		System.out.println("[1] jsp → controller \n page : " + page);

		mav = msvc.mList(page, limit);

//			System.out.println("[5] service → controller \n mav : " + mav);

		return mav;
	}

	// mView : 회원 상세보기
	@RequestMapping(value = "/mView", method = RequestMethod.GET)
	public ModelAndView mView(@RequestParam("memId") String memId) {

		mav = msvc.mView(memId);

		return mav;
	}

	// mModiForm : 수정
	@RequestMapping(value = "/mModiForm", method = RequestMethod.GET)
	public ModelAndView mModiForm(@RequestParam("memId") String memId) {

		mav = msvc.mModiForm(memId);

		return mav;
	}

	// mModify : 수정
	@RequestMapping(value = "/mModify", method = RequestMethod.POST)
	public ModelAndView mModify(@ModelAttribute MEMBER member) throws IllegalStateException, IOException {

		System.out.println("[1] jsp → controller \n member : " + member);

		

		mav = msvc.mModify(member);

		return mav;
	}
	
	// mDelete
	@RequestMapping(value = "/mDelete", method = RequestMethod.GET)
	public ModelAndView mDelete(@RequestParam("memId") String memId) {
		
		mav = msvc.mDelete(memId);
		
		return mav;
	}
	
	// idoverlap : 아이디 중복체크 ajax
	@RequestMapping(value = "/idoverlap", method = RequestMethod.POST)
	public @ResponseBody String idoverlap(@RequestParam("memId") String memId) {
		System.out.println("ajax로 넘어온 아이디 : " + memId);
		
		String result = msvc.idoverlap(memId);
		
		System.out.println("db에서 확인한 result메세지 : " + result);
		
		return result;
	}
	
	
	
}
