package kr.or.newbie.tutorial.devprogram.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.executor.ReuseExecutor;

import kr.or.newbie.tutorial.devprogram.domain.Devcomment;
import kr.or.newbie.tutorial.devprogram.domain.Devprogram;

public interface DevprogramService {

	// 설치글 등록
	public void regist(Devprogram devprogram) throws RuntimeException;
	
	// 설치글 목록 출력
	public List<Map<String, Object>> showDevprogramList() throws RuntimeException;
	
	// 설치글 상세보기
	public Devprogram showDevprogramdetail(String programName, String programOs) throws RuntimeException;

	// 댓글 등록
	public void commentAdd(String programName, String reviewContent, int userNo, int reviewNo);
	
	// 댓글 목록
	public List<Map<String, Object>> commentList(String programName, String programOs);
	
	/*
	// 댓글 등록
	public void commentadd(Devcomment devcomment) throws RuntimeException;
	
	// 댓글 목록 출력
	public List<Map<String, Object>> commentList(String programName, int userNo) throws RuntimeException;
	
	// 댓글 상세보기
	public Devcomment commentDetail(String programName, int userNo) throws RuntimeException;
	*/
	
}
