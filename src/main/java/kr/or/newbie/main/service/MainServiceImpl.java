package kr.or.newbie.main.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.newbie.main.dao.MainDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/** 
 * 메인 관련 비즈니스 메소드 구현 Business Object
 * @author 김순재
 */

@Service("mainService")
public class MainServiceImpl implements MainService{
	
	@Autowired
	private MainDao mainDao;
	
	public MainServiceImpl(){}
	
	public MainDao getMainDao() {
		return mainDao;
	}
	public void setMainDao(MainDao mainDao) {
		this.mainDao = mainDao;
	}
	
	@Override
	public List<Map<String, Object>> showProjectMain() {
		List<Map<String, Object>> map = mainDao.showProjectMain();
		return map;
	}
	
	@Override
	public List<Map<String, Object>> showProjectAdd(int pageNo) {
		List<Map<String, Object>> map = mainDao.showProjectAdd(pageNo);
		return map;
	}
	
	@Override
	public List<Map<String, Object>> showProjectProgramAdd(int pageNo, String programName) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pageNo", pageNo);
		map.put("programName", programName);
		
		return mainDao.showProjectProgramAdd(map);
	}
	@Override
	public int countGroup() {
		return mainDao.countGroup();
	}
}
