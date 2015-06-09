package kr.or.newbie.tutorial.devprogram.service;

import java.util.List;
import java.util.Map;

import kr.or.newbie.tutorial.devprogram.domain.Devprogram;

public interface DevprogramService {

	// 설치글 등록
	public void regist(Devprogram devprogram) throws RuntimeException;
	
	// 설치글 상세보기
	public Devprogram showDevprogramdetail(String programName);
	
	// 설치글 목록 출력
	public List<Map<String, Object>> showDevprogramList();
	
	
}
