package com.first.movie.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.first.movie.dto.PAY;
import com.first.movie.dto.TICKET;
import com.first.movie.dto.TIMEMOVIE;



@Repository
public class TDAO {

	// sql(mapper)로 연결
	@Autowired
	private SqlSessionTemplate sql;
	
	@Autowired
	private HttpSession session;
	
	public List<TICKET> ticList(String ticId) {
		System.out.println("(dao)ticName : " + ticId);
		return sql.selectList("Ticket.ticList", ticId);
	}

	public int ticPay(PAY pay) {
		System.out.println("(payTic) (dao) pay : " + pay);
		
		TIMEMOVIE tm = new TIMEMOVIE();
		tm.setTimMovName(pay.getPayMovName());
		tm.setTimTheName(pay.getPayTheName());
		tm.setTimTheRoom(pay.getPayTheRoom());
		tm.setTimStartDate(pay.getPayStartDate());
		tm.setTimLeftList(session.getAttribute("seatList").toString());
		
		sql.update("TimeMovie.tmPay", tm);
		
		return sql.insert("Ticket.ticPay", pay);
	}
}
