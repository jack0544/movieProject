package com.first.movie.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.first.movie.dao.MDAO;
import com.first.movie.dao.TDAO;
import com.first.movie.dto.MEMBER;
import com.first.movie.dto.PAGE;
import com.first.movie.dto.TICKET;


@Service
public class TService {

		// ModelAndView 
		private ModelAndView mav = new ModelAndView();
		
		// DAO
		@Autowired
		private TDAO tdao;
		
		// session 
		@Autowired
		private HttpSession session;
		
		//
		@Autowired
		private HttpServletRequest request;
		
		public ModelAndView ticList(String ticId) {
			System.out.println("(serv)ticName : " + ticId);

			List<TICKET> ticket = tdao.ticList(ticId);
			
			
			// model
			mav.addObject("tic", ticket);
			
			// view
			mav.setViewName("movie-reservation");

			System.out.println("(serv)ticket : " + ticket);
			
			return mav;
		}
		

}
