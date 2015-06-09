package kr.or.newbie.tutorial.devprogram.dao;

import java.util.List;
import java.util.Map;

import kr.or.newbie.tutorial.devprogram.domain.Devprogram;


public interface Devprogramdao {

	/** 설치법 등록 */  
	public void add(Devprogram devprogram) throws RuntimeException;

	/** 설치법 상세보기*/
	public Devprogram showDevprogramdetail(String programName);
	
	/**설치법 목록*/
	public List<Map<String, Object>> showDevprogramList();
}
