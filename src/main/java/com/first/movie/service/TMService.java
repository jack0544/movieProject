package com.first.movie.service;

import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.first.movie.dao.TMDAO;
import com.first.movie.dto.TIMEMOVIE;

@Service
public class TMService {

			// ModelAndView 
			private ModelAndView mav = new ModelAndView();
			
			// DAO
			@Autowired
			private TMDAO tmdao;
			
			// session 
			@Autowired
			private HttpSession session;
			
	
			public ModelAndView movList(TIMEMOVIE tmovie,String theCity) {
				
				List<TIMEMOVIE> timeMovie = tmdao.movList(tmovie);
				
				// model
				mav.addObject("theCity", theCity);
				mav.addObject("timTheName", tmovie.getTimTheName());
				mav.addObject("timStartDate", tmovie.getTimStartDate());
				
				for(int i = 0; i < timeMovie.size(); i++) {
					LocalDateTime locTime = LocalDateTime.now();
					LocalDateTime movTime1 = LocalDateTime.of(Integer.parseInt(timeMovie.get(i).getTimStartDate().substring(0, 4)),
							Integer.parseInt(timeMovie.get(i).getTimStartDate().substring(5, 7)),
							Integer.parseInt(timeMovie.get(i).getTimStartDate().substring(8, 10)),
							Integer.parseInt(timeMovie.get(i).getTimStartTime1().substring(0, 2)),
							Integer.parseInt(timeMovie.get(i).getTimStartTime1().substring(3, 5)));
					LocalDateTime movTime2 = LocalDateTime.of(Integer.parseInt(timeMovie.get(i).getTimStartDate().substring(0, 4)),
							Integer.parseInt(timeMovie.get(i).getTimStartDate().substring(5, 7)),
							Integer.parseInt(timeMovie.get(i).getTimStartDate().substring(8, 10)),
							Integer.parseInt(timeMovie.get(i).getTimStartTime2().substring(0, 2)),
							Integer.parseInt(timeMovie.get(i).getTimStartTime2().substring(3, 5)));
					LocalDateTime movTime3 = LocalDateTime.of(Integer.parseInt(timeMovie.get(i).getTimStartDate().substring(0, 4)),
							Integer.parseInt(timeMovie.get(i).getTimStartDate().substring(5, 7)),
							Integer.parseInt(timeMovie.get(i).getTimStartDate().substring(8, 10)),
							Integer.parseInt(timeMovie.get(i).getTimStartTime3().substring(0, 2)),
							Integer.parseInt(timeMovie.get(i).getTimStartTime3().substring(3, 5)));
					LocalDateTime movTime4 = LocalDateTime.of(Integer.parseInt(timeMovie.get(i).getTimStartDate().substring(0, 4)),
							Integer.parseInt(timeMovie.get(i).getTimStartDate().substring(5, 7)),
							Integer.parseInt(timeMovie.get(i).getTimStartDate().substring(8, 10)),
							Integer.parseInt(timeMovie.get(i).getTimStartTime4().substring(0, 2)),
							Integer.parseInt(timeMovie.get(i).getTimStartTime4().substring(3, 5)));
					if (locTime.isAfter(movTime1)) {
						timeMovie.get(i).setTimStartTime1("");
					}
					if (locTime.isAfter(movTime2)) {
						timeMovie.get(i).setTimStartTime2("");
					}
					if (locTime.isAfter(movTime3)) {
						timeMovie.get(i).setTimStartTime3("");
					}
					if (locTime.isAfter(movTime4)) {
						timeMovie.get(i).setTimStartTime4("");
					}
				}
				
				
				mav.addObject("tm", timeMovie);
				
				TIMEMOVIE one = timeMovie.get(0);	// 첫번째 튜플 전체를 가져옴
				
				mav.addObject("timMovName", one.getTimMovName());
				mav.addObject("timBackPic", one.getTimBackPic());
				
				
				// view
				mav.setViewName("movie-ticket-plan");
				
				return mav;
			}

			
			public List<TIMEMOVIE> bmovList(TIMEMOVIE tmovie) {
				List<TIMEMOVIE> timeMovie = tmdao.movList(tmovie);
				
				for(int i = 0; i < timeMovie.size(); i++) {
					LocalDateTime locTime = LocalDateTime.now();
					LocalDateTime movTime1 = LocalDateTime.of(Integer.parseInt(timeMovie.get(i).getTimStartDate().substring(0, 4)),
							Integer.parseInt(timeMovie.get(i).getTimStartDate().substring(5, 7)),
							Integer.parseInt(timeMovie.get(i).getTimStartDate().substring(8, 10)),
							Integer.parseInt(timeMovie.get(i).getTimStartTime1().substring(0, 2)),
							Integer.parseInt(timeMovie.get(i).getTimStartTime1().substring(3, 5)));
					LocalDateTime movTime2 = LocalDateTime.of(Integer.parseInt(timeMovie.get(i).getTimStartDate().substring(0, 4)),
							Integer.parseInt(timeMovie.get(i).getTimStartDate().substring(5, 7)),
							Integer.parseInt(timeMovie.get(i).getTimStartDate().substring(8, 10)),
							Integer.parseInt(timeMovie.get(i).getTimStartTime2().substring(0, 2)),
							Integer.parseInt(timeMovie.get(i).getTimStartTime2().substring(3, 5)));
					LocalDateTime movTime3 = LocalDateTime.of(Integer.parseInt(timeMovie.get(i).getTimStartDate().substring(0, 4)),
							Integer.parseInt(timeMovie.get(i).getTimStartDate().substring(5, 7)),
							Integer.parseInt(timeMovie.get(i).getTimStartDate().substring(8, 10)),
							Integer.parseInt(timeMovie.get(i).getTimStartTime3().substring(0, 2)),
							Integer.parseInt(timeMovie.get(i).getTimStartTime3().substring(3, 5)));
					LocalDateTime movTime4 = LocalDateTime.of(Integer.parseInt(timeMovie.get(i).getTimStartDate().substring(0, 4)),
							Integer.parseInt(timeMovie.get(i).getTimStartDate().substring(5, 7)),
							Integer.parseInt(timeMovie.get(i).getTimStartDate().substring(8, 10)),
							Integer.parseInt(timeMovie.get(i).getTimStartTime4().substring(0, 2)),
							Integer.parseInt(timeMovie.get(i).getTimStartTime4().substring(3, 5)));
					if (locTime.isAfter(movTime1)) {
						timeMovie.get(i).setTimStartTime1("");
					}
					if (locTime.isAfter(movTime2)) {
						timeMovie.get(i).setTimStartTime2("");
					}
					if (locTime.isAfter(movTime3)) {
						timeMovie.get(i).setTimStartTime3("");
					}
					if (locTime.isAfter(movTime4)) {
						timeMovie.get(i).setTimStartTime4("");
					}
				}
				
				return timeMovie;
			}

	
}