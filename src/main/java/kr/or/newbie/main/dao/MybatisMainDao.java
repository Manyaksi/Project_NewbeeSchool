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
	

}
