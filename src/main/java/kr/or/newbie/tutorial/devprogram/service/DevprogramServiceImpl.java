package kr.or.newbie.tutorial.devprogram.service;

import kr.or.newbie.tutorial.devprogram.dao.Devprogramdao;
import kr.or.newbie.tutorial.devprogram.domain.Devprogram;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("devprogramService")
public class DevprogramServiceImpl implements DevprogramService{

	@Autowired
	private Devprogramdao devprogramDao;
	
	public DevprogramServiceImpl(){}
	
	public Devprogramdao getDevprogramDao(){
		return devprogramDao;
	}
	
	public void setDevprogramDao(Devprogramdao devprogramDao){
		this.devprogramDao = devprogramDao;
	}
	
	// 설치글 등록
	@Override
	public void regist(Devprogram devprogram) throws RuntimeException {
		devprogramDao.add(devprogram);
		System.out.println("[debug] : 게시글 등록 완료");
		
	}

	// 설치글 상세보기
	@Override
	public Devprogram showDevprogramdetail() {
		System.out.println("[Debug] : 설치글 상세보기");	
		return devprogramDao.showDevprogramdetail();
	}
}
