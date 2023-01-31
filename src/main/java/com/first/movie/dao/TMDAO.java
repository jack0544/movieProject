package com.first.movie.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.first.movie.dto.TICKET;
import com.first.movie.dto.TIMEMOVIE;

@Repository
public class TMDAO {

	// sql(mapper)로 연결
	@Autowired
	private SqlSessionTemplate sql;

	public TIMEMOVIE movView(String timMovName) {
		System.out.println("(dao)timMovName : " + timMovName);
		return sql.selectOne("TimeMovie.movView", timMovName);
	}

	public List<TIMEMOVIE> movList(TIMEMOVIE tmovie) {
		return sql.selectList("TimeMovie.movList", tmovie);
	}

}
