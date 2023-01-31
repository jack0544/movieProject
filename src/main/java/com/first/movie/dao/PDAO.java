package com.first.movie.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.first.movie.dto.MEMBER;
import com.first.movie.dto.PAGE;
import com.first.movie.dto.PAY;
import com.first.movie.dto.TICKET;



@Repository
public class PDAO {

	// sql(mapper)로 연결
	@Autowired
	private SqlSessionTemplate sql;
	
	public List<PAY> payList(String payId) {
		System.out.println("(dao)ticName : " + payId);
		return sql.selectList("Pay.payList", payId);
	}

	public List<PAY> payKakao(String payId) {
		
		return sql.selectList("Pay.payKakao", payId);
	}

	public int chunwonSale(String payId) {
		
		return sql.update("Pay.chunwonSale", payId);
	}
	
	public int samchunwonSale(String payId) {
		
		return sql.update("Pay.samchunwonSale", payId);
	}
	
	public int ochunwonSale(String payId) {
		
		return sql.update("Pay.ochunwonSale", payId);
	}

	public int payDelete(String payId) {
		return sql.delete("Pay.payDelete", payId);
	}

	public int payInsert(PAY pay) {
		
		return sql.insert("Pay.payInsert", pay);
	}
}
