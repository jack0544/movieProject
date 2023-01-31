package com.first.movie.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.first.movie.dto.MOVIE;
import com.first.movie.dto.MOVIENAME;
import com.first.movie.dto.THEATER;
import com.first.movie.dto.TIMEMOVIE;

@Repository
public class SDAO {
	@Autowired
	SqlSessionTemplate sql;

	public List<THEATER> findName(String theCity) {
		return sql.selectList("timMovie.findName", theCity);
	}

	public List findNames(String theCity) {
		return sql.selectList("timMovie.findNames", theCity);
	}

	public List<MOVIE> findmovie(MOVIENAME moviename) {

		return sql.selectList("timMovie.findmovie", moviename);
	}

	public List<TIMEMOVIE> searchmovie(TIMEMOVIE timemovie) {
		return sql.selectList("timMovie.searchmovie", timemovie);
	}

	public List<MOVIE> getAllList() {
		return sql.selectList("timMovie.getAllList");
	}
	
}