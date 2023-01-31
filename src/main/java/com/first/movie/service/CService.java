package com.first.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.first.movie.dao.CDAO;
import com.first.movie.dto.COMMENT;

@Service
public class CService {

	@Autowired
	private CDAO cdao;
	
	// 평점 리스트 (comMovie)
	public List<COMMENT> cList(String comMovie) {

		List<COMMENT> commentList = cdao.cList(comMovie);
		
		System.out.println("\ncommentList : " + commentList);
		
		return commentList;
	}
	
	// 평점 등록
	public List<COMMENT> comWrite(COMMENT comment) {

		List<COMMENT> commnetList;

		int result = cdao.comWrite(comment);

		if (result > 0) {
			commnetList = cdao.cList(comment.getComMovie());
		} else {
			commnetList = null;
		}

		return commnetList;
	}
	
	// 평점 좋아요
	public List<COMMENT> comGood(COMMENT comment) {
		List<COMMENT> commnetList;

		int result = cdao.comGood(comment);
		
		System.out.println("reuslt : " + result);
		
		if (result > 0) {
			commnetList = cdao.cList(comment.getComMovie());
		} else {
			commnetList = null;
		}

		return commnetList;
	}

	// 평점 싫어요
	public List<COMMENT> comBad(COMMENT comment) {
		List<COMMENT> commnetList;

		int result = cdao.comBad(comment);

		if (result > 0) {
			commnetList = cdao.cList(comment.getComMovie());
		} else {
			commnetList = null;
		}

		return commnetList;
	}
}
