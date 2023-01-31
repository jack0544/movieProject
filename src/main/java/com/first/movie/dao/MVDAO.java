package com.first.movie.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.first.movie.dto.COUPON;
import com.first.movie.dto.MOVIE;
import com.first.movie.dto.THEATER;
import com.first.movie.dto.TIMEMOVIE;

@Repository
public class MVDAO {

	@Autowired
	SqlSessionTemplate sql;
	
public TIMEMOVIE tmSearch(TIMEMOVIE timeMovie) {
		
		return sql.selectOne("TimeMovie.tmSearch", timeMovie);
	}

	public int tmPay(TIMEMOVIE timMov) {

		return sql.update("TimeMovie.tmPay", timMov);
	}


	public int cpUpdate(COUPON coupon) {
		
		System.out.println("(4)DAO, coupon : " + coupon);
		return sql.update("TimeMovie.cpUpdate", coupon);
	}

	public String cpView(String loginId) {
		
		return sql.selectOne("TimeMovie.cpView", loginId);
	}

	public int movieData(MOVIE movie) {
		
		
		return sql.insert("TimeMovie.movData",movie);
	}

	public void movDel() {
		
		sql.delete("TimeMovie.movDel");
		
	}

	public String nameOut(String loginId) {
		System.out.println(loginId);
		return sql.selectOne("TimeMovie.nameOut" , loginId);
	}

	public String getPic(String movName, int randNum) {
		
		String pic = " ";
		
		if(randNum == 1) {
			pic = sql.selectOne("TimeMovie.getPic1",movName);
		}else if(randNum == 2) {
			pic = sql.selectOne("TimeMovie.getPic2",movName);
		}else if(randNum == 3) {
			pic = sql.selectOne("TimeMovie.getPic3",movName);
		}else if(randNum == 4) {
			pic = sql.selectOne("TimeMovie.getPic4",movName);
		}else if(randNum == 5) {
			pic = sql.selectOne("TimeMovie.getPic5",movName);
		}else {
			pic = sql.selectOne("TimeMovie.getPic6",movName);
		}
		
		if(pic.equals(" ")) {
			pic = "https://mblogthumb-phinf.pstatic.net/20150629_148/qq1221qq_1435529949120Ez8pj_JPEG/1452988-po-kung-fu-panda.jpg?type=w2";
		}
		
		
		return pic;
	}

	public List<TIMEMOVIE> getPoster(TIMEMOVIE timMov) {
		
		return sql.selectList("TimeMovie.getPoster", timMov);
	}
	
	public void tmseting(TIMEMOVIE tm) {

		
		sql.insert("Movie.setlist", tm);
		sql.insert("Movie.setlist1", tm);
		sql.insert("Movie.setlist2", tm);
		sql.insert("Movie.setlist3", tm);

	
	}
	public List<MOVIE> getAllmovie() {
		return sql.selectList("Movie.movieList");
	}

	public List<THEATER> getAllater() {
		return sql.selectList("Movie.aterList");
	}
	
	public void deltm() {
		sql.delete("Movie.deltm");
		
	}
	
	}
