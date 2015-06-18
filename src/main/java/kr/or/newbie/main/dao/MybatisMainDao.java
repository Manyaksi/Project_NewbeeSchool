package kr.or.newbie.main.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("mainDao")
public class MybatisMainDao implements MainDao {
	
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	@Override
	public List<Map<String, Object>> showProjectMain() {
		
		List<Map<String, Object>> map = null;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			MainDao dao = session.getMapper(MainDao.class);
			map = dao.showProjectMain();
		}finally{
			session.close();
		}
		return map;
	}
	
	@Override
	public List<Map<String, Object>> showProjectAdd(int pageNo) {

		List<Map<String, Object>> map = null;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			MainDao dao = session.getMapper(MainDao.class);
			map = dao.showProjectAdd(pageNo);
		}finally{
			session.close();
		}
		return map;
	}
	
	@Override
	public List<Map<String, Object>> showProjectProgramAdd(Map<String, Object> map) {
		List<Map<String, Object>> mapList = null;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			MainDao dao = session.getMapper(MainDao.class);
			mapList = dao.showProjectProgramAdd(map);
		}finally{
			session.close();
		}
		return mapList;
	}
	
	@Override
	public int countGroup() {
		SqlSession session = null;
		int count= 0;
		try{
			session = sqlSessionFactory.openSession();
			MainDao dao = session.getMapper(MainDao.class);
			count = dao.countGroup();
		}finally{
			session.close();
		}
		return count;
	}
	
	@Override
	public int countArticle() {
		SqlSession session = null;
		int count= 0;
		try{
			session = sqlSessionFactory.openSession();
			MainDao dao = session.getMapper(MainDao.class);
			count = dao.countArticle();
		}finally{
			session.close();
		}
		return count;
	}
	
	@Override
	public int countArticleComment() {
		SqlSession session = null;
		int count= 0;
		try{
			session = sqlSessionFactory.openSession();
			MainDao dao = session.getMapper(MainDao.class);
			count = dao.countArticleComment();
		}finally{
			session.close();
		}
		return count;
	}

}
