package com.first.movie.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.first.movie.dto.COMMENT;
import com.first.movie.dto.MOVIE;

@Repository
public class BDAO {

	@Autowired
	private SqlSessionTemplate sql;

	// 영화정보 상세보기 창 sql문. movName값을 받아서 접속
	public MOVIE moviedetails(String movName) {

		System.out.println("[3] service > dao \nmovName : " + movName);

		return sql.selectOne("Movie.moviedetails", movName);
	}

	public List<MOVIE> movieList() {
		System.out.println("1");
		return sql.selectList("Board.movieList");
	}

	// 시작페이지 (MOVRANK 순)
	public List<MOVIE> home1() {

		return sql.selectList("Movie.home1");
	}
	
	// 시작페이지 (MOVDATE 순)
	public List<MOVIE> home2() {

		return sql.selectList("Movie.home2");
	}
}
