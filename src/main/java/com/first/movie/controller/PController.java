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

import com.first.movie.dto.PAY;
import com.first.movie.dto.TIMEMOVIE;
import com.first.movie.service.MVService;
import com.first.movie.service.PService;


@Controller
public class PController {
	// ModelAndView 객체 생성
	private ModelAndView mav = new ModelAndView();

	// MemberService 연결
	@Autowired
	private PService psvc;
	
	@Autowired
	private MVService mvsvc;

	@Autowired
	private HttpSession session;


	@RequestMapping(value = "/payTic", method = RequestMethod.GET)
	public ModelAndView payTic(@RequestParam("payId") String payId) {
		
		System.out.println("[1] (payTic) jsp → controller \n payId : " + payId);
		
		mav = psvc.payTic(payId);
		
//			System.out.println("[5] service → controller \n mav : " + mav);
		
		return mav;
	}
	
	// payKakao 
	@RequestMapping(value = "/payKakao", method = RequestMethod.GET)
	public ModelAndView payKakao(@RequestParam("payId") String payId) {

		mav = psvc.payKakao(payId);

		return mav;
	}

	// chunwonSale 
	@RequestMapping(value = "chunwonSale", method = RequestMethod.POST)
	public @ResponseBody List<PAY> chunwonSale(@RequestParam("payId") String payId){
		
		List<PAY> payList = psvc.chunwonSale(payId);
		
		System.out.println(payList);
		
		return payList;
	}
	
	// samchunwonSale 
	@RequestMapping(value = "samchunwonSale", method = RequestMethod.POST)
	public @ResponseBody List<PAY> samchunwonSale(@RequestParam("payId") String payId){
		
		List<PAY> payList = psvc.samchunwonSale(payId);
		
		System.out.println(payList);
		
		return payList;
	}
	
	// ochunwonSale 
	@RequestMapping(value = "ochunwonSale", method = RequestMethod.POST)
	public @ResponseBody List<PAY> ochunwonSale(@RequestParam("payId") String payId){
		
		List<PAY> payList = psvc.ochunwonSale(payId);
		
		System.out.println(payList);
		
		return payList;
	}
	
	@RequestMapping(value = "/payDelete", method = RequestMethod.GET)
	public ModelAndView payDelete(@RequestParam("payId") String payId) {

		mav = psvc.payDelete(payId);

		return mav;
	}

	@RequestMapping(value = "/payInsert", method = RequestMethod.GET)
	public ModelAndView payInsert(@ModelAttribute TIMEMOVIE timMov) {
		
		PAY pay = mvsvc.payPrint(timMov);
		
		mav = psvc.payInsert(pay);
		mav = psvc.payList(pay.getPayId());
		
		return mav;
	}

}
