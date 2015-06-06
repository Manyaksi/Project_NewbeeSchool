package kr.or.newbie.tutorial.devprogram.dao;

import kr.or.newbie.tutorial.devprogram.domain.Devprogram;



public interface Devprogramdao {

	/** 설치법 등록 */  
	public void add(Devprogram devprogram) throws RuntimeException;

	/** 설치법 상세보기*/
	public Devprogram showDevprogramdetail();
	
	
	
}
