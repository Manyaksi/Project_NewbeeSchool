package kr.or.newbie.tutorial.devprogram.dao;

import java.util.List;
import java.util.Map;

import kr.or.newbie.tutorial.devprogram.domain.Devcomment;
import kr.or.newbie.tutorial.devprogram.domain.Devprogram;


public interface Devprogramdao {
	
	// 설치법 등록 
	public void add(Devprogram devprogram) throws RuntimeException;
	
	// 설치법 상세보기
	public Devprogram showDevprogramdetail(String programName);
	
	// 설치법 목록
	public List<Map<String, Object>> showDevprogramList();
	
	// 댓글 등록
	public void commentAdd(Map<String, Object> params);
	
	// 댓글 목록
	public List<Map<String, Object>> commentList(Map<String, String> params);
	
	/*
	// 댓글 등록
	public void commentadd(Devcomment devcomment) throws RuntimeException;
		
	// 댓글 목록 출력
	public List<Map<String, Object>> commentList(Map<String, String> params) throws RuntimeException;
		
	// 댓글 상세보기
	public Devcomment commentDetail(String programName, int userNo) throws RuntimeException;
		
	*/
}
