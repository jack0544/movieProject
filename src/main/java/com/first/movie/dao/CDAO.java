package com.first.movie.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.first.movie.dto.COMMENT;

@Repository
public class CDAO {
	
	@Autowired
	SqlSessionTemplate sql;

	// 평점 등록
	public int comWrite(COMMENT comment) {
		
		return sql.insert("Comment.comWrite", comment);
	}
	
	// 평점 리스트 (movName)
	public List<COMMENT> commentList(String movName) {

		return sql.selectList("Comment.commentList",movName);
	}

	// 평점 리스트 (comMovie)
	public List<COMMENT> cList(String comMovie) {

		return sql.selectList("Comment.cList", comMovie);
	}

	// 평점 좋아요
	public int comGood(COMMENT comment) {
		return sql.update("Comment.comGood", comment);
	}
	
	// 평점 싫어요
	public int comBad(COMMENT comment) {
		return sql.update("Comment.comBad", comment);
	}

	
	
}
