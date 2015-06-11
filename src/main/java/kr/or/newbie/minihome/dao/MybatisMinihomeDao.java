package kr.or.newbie.minihome.dao;

import java.util.List;
import java.util.Map;

import kr.or.newbie.minihome.domain.GuestBook;
import kr.or.newbie.minihome.domain.Users;
import kr.or.newbie.project.domain.Project;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("minihomeDao")
public class MybatisMinihomeDao implements MinihomeDao {
	
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	@Override
	//미니홈 보기
	public Users showMinihome(int userNo) {
		
		Users users = null;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			MinihomeDao dao = session.getMapper(MinihomeDao.class);
			users = dao.showMinihome(userNo);
		}finally{
			session.close();
		}
		return users;
	}
	
	@Override
	//방명록 작성
	public void addGuestbook(GuestBook guestbook) {
		
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			MinihomeDao dao = session.getMapper(MinihomeDao.class);
			dao.addGuestbook(guestbook);
		}finally{
			session.close();
		}
		
	}
	
	@Override
	//방명록 출력
	public List<Map<String, Object>> showGuestbook(int userNo) {
		List<Map<String, Object>> guestbook = null;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			MinihomeDao dao = session.getMapper(MinihomeDao.class);
			guestbook = dao.showGuestbook(userNo);
		}finally{
			session.close();
		}
		return guestbook;
	}
	
}
