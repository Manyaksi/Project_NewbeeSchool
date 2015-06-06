package kr.or.newbie.tutorial.devprogram.service;

import kr.or.newbie.tutorial.devprogram.domain.Devprogram;

public interface DevprogramService {

	// 설치글 등록
	public void regist(Devprogram devprogram) throws RuntimeException;
	
	// 설치글 상세보기
	public Devprogram showDevprogramdetail();
	
	
	
}
