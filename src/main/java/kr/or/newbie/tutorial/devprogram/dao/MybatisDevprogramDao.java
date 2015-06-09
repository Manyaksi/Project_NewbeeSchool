package kr.or.newbie.tutorial.devprogram.dao;

import java.util.List;
import java.util.Map;

import kr.or.newbie.project.dao.ProjectDao;
import kr.or.newbie.tutorial.devprogram.domain.Devprogram;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("Devprogramdao")
public class MybatisDevprogramDao implements Devprogramdao{


	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	@Override
	public void add(Devprogram devprogram) throws RuntimeException {
		
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			Devprogramdao dao = session.getMapper(Devprogramdao.class);
			dao.add(devprogram);
			System.out.println("새로운 글 등록");
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			session.close();
		}
		
	}

	
/*
	@Override
	public List<Devprogram> showDevprogramList() {
		
		List<Devprogram> devprogramList = null;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			Devprogramdao dao = session.getMapper(Devprogramdao.class);
			devprogramList = dao.showDevprogramList();
		}finally{
			session.close();
		}
		return devprogramList;
	}

*/	
	// 상세보기
	@Override
	public Devprogram showDevprogramdetail(String programName) {
		Devprogram devprogram = null;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			Devprogramdao dao = session.getMapper(Devprogramdao.class);
			devprogram = dao.showDevprogramdetail(programName);
		}finally{
			session.close();
		}
		return devprogram;	
	}

	// 설치법 목록
	@Override
	public List<Map<String, Object>> showDevprogramList() {
		List<Map<String, Object>> map = null;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			Devprogramdao dao = session.getMapper(Devprogramdao.class);
			map = dao.showDevprogramList();
		}finally{
			session.close();
		}
		return map;
	}
}
