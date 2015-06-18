package kr.or.newbie.minihome.service;

import java.util.List;
import java.util.Map;

import kr.or.newbie.minihome.dao.MinihomeDao;
import kr.or.newbie.minihome.domain.GuestBook;
import kr.or.newbie.minihome.domain.Users;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/** 
 * 미니홈 관련 비즈니스 메소드 구현 Business Object
 * @author 곽선민
 */

@Service("minihomeService")
public class MinihomeServiceImpl implements MinihomeService{
	
	@Autowired
	private MinihomeDao minihomeDao;
	
	public MinihomeServiceImpl(){}
	
	public MinihomeDao getMinihomeDao() {
		return minihomeDao;
	}
	public void setMinihomeDao(MinihomeDao minihomeDao) {
		this.minihomeDao = minihomeDao;
	}
	
	@Override
	public Users showMinihome(int userNo) {
		return minihomeDao.showMinihome(userNo);
	}
	
	@Override
	public void addGuestbook(GuestBook guestbook) {
		minihomeDao.addGuestbook(guestbook);
		
	}
	
	@Override
	public List<Map<String, Object>> showGuestbook(int userNo) {
		return minihomeDao.showGuestbook(userNo);
	}
	
}
