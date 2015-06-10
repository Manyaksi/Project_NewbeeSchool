package kr.or.newbie.users.dao;

import kr.or.newbie.users.domain.Users;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("usersDao")
public class MybatisUsersDao implements UsersDao {
	
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	@Override
	//회원가입하기
	public void joinNewbie(Users users) {
		
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			UsersDao dao = session.getMapper(UsersDao.class);
			dao.joinNewbie(users);
		}finally{
			session.close();
		}
	}
	

}
