package com.first.movie.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.first.movie.service.BService;

@Controller
public class BController {

	ModelAndView mav = new ModelAndView();

	@Autowired
	private HttpSession session;

	@Autowired
	private BService bsvc;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home() {

		System.out.println("[1] jsp > controller");

		mav = bsvc.home();

		return mav;
	}

	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView index() {

		System.out.println("[1] jsp > controller");

		mav = bsvc.home();

		return mav;
	}

	@RequestMapping(value = "/index-1", method = RequestMethod.GET)
	public String index1() {

		return "index";
	}

	@RequestMapping(value = "/404", method = RequestMethod.GET)
	public String fourOneFour() {

		return "404";
	}

	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about() {

		return "about";
	}

	@RequestMapping(value = "/apps-download", method = RequestMethod.GET)
	public String appsdownload() {

		return "apps-download";
	}

	@RequestMapping(value = "/blog", method = RequestMethod.GET)
	public String blog() {

		return "blog";
	}

	@RequestMapping(value = "/blog-details", method = RequestMethod.GET)
	public String blogdetails() {

		return "blog-details";
	}

	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact() {

		return "contact";
	}

	@RequestMapping(value = "/event-checkout", method = RequestMethod.GET)
	public String eventcheckout() {

		return "event-checkout";
	}
	
	@RequestMapping(value = "/event-ticket", method = RequestMethod.GET)
	public String eventticket() {

		return "event-ticket";
	}

	@RequestMapping(value = "/event-details", method = RequestMethod.GET)
	public String eventdetails() {

		return "event-details";
	}

	@RequestMapping(value = "/events", method = RequestMethod.GET)
	public String events() {

		return "events";
	}

	@RequestMapping(value = "/MyPage", method = RequestMethod.GET)
	public String MyPage() {

		return "MyPage";
	}


	@RequestMapping(value = "/index-2", method = RequestMethod.GET)
	public String index2() {

		return "index-2";
	}


	// 영화정보 상세보기 창. movName값을 받아서 접속
	@RequestMapping(value = "/movie-details", method = RequestMethod.GET)
	public ModelAndView moviedetails(@RequestParam("movName") String movName, @RequestParam("theCity") String theCity,
			@RequestParam("timTheName") String timTheName, @RequestParam("timStartDate") String timStartDate) {

		// movName값을 가지고 service로 이동
		mav = bsvc.moviedetails(movName, theCity, timTheName, timStartDate);

		return mav;
	}

	@RequestMapping(value = "/movie-details-2", method = RequestMethod.GET)
	public String moviedetails2() {

		return "movie-details-2";
	}

	@RequestMapping(value = "/movie-grid", method = RequestMethod.GET)
	public String moviegrid() {

		return "movie-grid";
	}

	// movie-list
	@RequestMapping(value = "/movie-list", method = RequestMethod.GET)
	public ModelAndView movielist() {
		mav = bsvc.movieList();
		System.out.println("[1] MAV " + mav);
		return mav;
	}

	@RequestMapping(value = "/movie-ticket-plan", method = RequestMethod.GET)
	public String movieticketplan() {

		return "movie-ticket-plan";
	}

	@RequestMapping(value = "/popcorn", method = RequestMethod.GET)
	public String popcorn() {

		return "popcorn";
	}

	@RequestMapping(value = "/sign-in", method = RequestMethod.GET)
	public String signin() {

		return "sign-in";
	}

	@RequestMapping(value = "/sign-up", method = RequestMethod.GET)
	public String signup() {

		return "sign-up";
	}

	@RequestMapping(value = "/sport-detailsp", method = RequestMethod.GET)
	public String sportdetails() {

		return "sport-details";
	}

	@RequestMapping(value = "/sports", method = RequestMethod.GET)
	public String sports() {

		return "sports";
	}

	@RequestMapping(value = "/sports-checkout", method = RequestMethod.GET)
	public String sportscheckout() {

		return "sports-checkout";
	}

}
