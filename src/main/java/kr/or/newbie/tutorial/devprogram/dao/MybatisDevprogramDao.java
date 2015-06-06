package kr.or.newbie.tutorial.devprogram.dao;

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

	@Override
	public Devprogram showDevprogramdetail() {
		
		
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			Devprogramdao dao = session.getMapper(Devprogramdao.class);
		}finally{
			session.close();
		}
		
		
		return null;
		
	}
}
