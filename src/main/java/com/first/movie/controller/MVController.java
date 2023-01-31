package com.first.movie.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.first.movie.dto.PAY;
import com.first.movie.dto.TIMEMOVIE;
import com.first.movie.service.MVService;

@Controller
public class MVController {

	ModelAndView mav = new ModelAndView();

	@Autowired
	MVService mvsvc;

	@Autowired
	private HttpSession session;

	@RequestMapping(value = "/sports-ticket", method = RequestMethod.GET)
	public ModelAndView sportsticket() {
		
		mvsvc.crl();
		
		mvsvc.utm();
		
		mav.setViewName("redirect:/index");
		
		return mav;
	}
	
	@RequestMapping(value = "/seatOn", method = RequestMethod.POST)
	public @ResponseBody String seatOn(@RequestParam("seatList") String seatList, @RequestParam("seatId") String seatId) {

	String seatCol = seatId.substring(0,1); 
	seatList = seatList.replaceFirst(seatId+" ", seatCol+"0 ");
	String result = seatList;
	
	String seatPayList = session.getAttribute("seatPay")+" "+ seatId;
	session.setAttribute("seatPay",  seatPayList);
	System.out.println(seatPayList);
	session.setAttribute("seatList", result);
	
	return seatPayList;
}
	
	@RequestMapping(value = "/seatOff", method = RequestMethod.POST)
	public @ResponseBody String seatOff(@RequestParam("seatList") String seatList, @RequestParam("seatId") String seatId) {

	String seatCol = seatId.substring(0,1); 
	seatList = seatList.replaceFirst(seatCol+"0 ", seatId+" ");
	String result = seatList;
	session.setAttribute("seatList", result);
	
	String seatPayList = session.getAttribute("seatPay").toString().replaceFirst(" "+seatId, "");
	session.setAttribute("seatPay",  seatPayList);
	System.out.println(seatPayList);
	
	return seatPayList;
}
	@RequestMapping(value = "/seatOn2", method = RequestMethod.POST)
	public @ResponseBody String seatOn2(@RequestParam("seatList") String seatList, @RequestParam("seatId1") String seatId1, @RequestParam("seatId2") String seatId2) {

	String seatCol = seatId1.substring(0,1); 
	seatList = seatList.replaceFirst(seatId1+" ", seatCol+"0 ");
	seatList = seatList.replaceFirst(seatId2+" ", seatCol+"0 ");
	String result = seatList;
	
	String seatPayList = session.getAttribute("seatPay")+" "+ seatId1 + " " + seatId2;
	session.setAttribute("seatPay",  seatPayList);
	System.out.println(seatPayList);
	session.setAttribute("seatList", result);
	
	return seatPayList;
}
	
	@RequestMapping(value = "/seatOff2", method = RequestMethod.POST)
	public @ResponseBody String seatOff2(@RequestParam("seatList") String seatList, @RequestParam("seatId1") String seatId1,@RequestParam("seatId2") String seatId2) {

	String seatCol = seatId1.substring(0,1); 
	seatList = seatList.replaceFirst(seatCol+"0 ", seatId1+" ");
	seatList = seatList.replaceFirst(seatCol+"0 ", seatId2+" ");
	String result = seatList;
	session.setAttribute("seatList", result);
	
	String seatPayList = session.getAttribute("seatPay").toString().replaceFirst(" "+seatId1+ " "+seatId2, "");
	session.setAttribute("seatPay", seatPayList);
	System.out.println(seatPayList);
	
	return seatPayList;
}
	
	
	
	@RequestMapping(value = "/movie-seat-plan", method = RequestMethod.GET)
	public String movieseatplan(@ModelAttribute TIMEMOVIE timMov) {
		
		mvsvc.movSeat(timMov);
		session.setAttribute("seatPay", "");
		
		return "movie-seat-plan";
	}
	@RequestMapping(value = "/puzzle", method = RequestMethod.GET)
	public ModelAndView puzzle(@RequestParam("level") String level, @RequestParam("movName") String movName) {
		
		String picUrl = mvsvc.getPic(movName);
		mav.addObject("level", level);
		mav.addObject("picUrl", picUrl);
		mav.setViewName("puzzle");
		
		return mav;
	}
	
	@RequestMapping(value = "/pzSuccess", method = RequestMethod.POST)
	public @ResponseBody String pzSuccess(@RequestParam("loginId") String loginId, @RequestParam("level") String level) {
			// @ResponseBody : 페이지 이동이아닌 데이터를 보낸다 (String값에 .jsp 붙지않음!)
		System.out.println("(1)Controller");
		String result = mvsvc.cpUpdate(loginId, level);
		System.out.println("(6)Controller, result : " + result);
		return result;
	}
	
	@RequestMapping(value = "/cpCheck", method = RequestMethod.POST)
	public @ResponseBody ArrayList<Integer> cpCheck(@RequestParam("loginId") String loginId) {
			// @ResponseBody : 페이지 이동이아닌 데이터를 보낸다 (String값에 .jsp 붙지않음!)
		ArrayList<Integer> cpList = mvsvc.cpCheck(loginId);
		
		return cpList;
	}
	
	
	
	

}