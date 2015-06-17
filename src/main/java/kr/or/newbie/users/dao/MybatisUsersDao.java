package kr.or.newbie.users.dao;

import java.util.List;
import java.util.Map;

import kr.or.newbie.users.controller.UsersController;
import kr.or.newbie.users.domain.Users;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("usersDao")
public class MybatisUsersDao implements UsersDao {
	
	private static final Logger logger = LoggerFactory.getLogger(UsersController.class); 
	
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

	@Override
	public List<Users> selectUserList(Map<String, String> map) {
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			UsersDao dao = session.getMapper(UsersDao.class);
			return dao.selectUserList(map);
		}finally{
			session.close();
		}
	}
	
	
	@Override
	public Users confirmEmail(String id) {
		Users users = null;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			UsersDao dao = session.getMapper(UsersDao.class);
			users = dao.confirmEmail(id);
		}finally{
			session.close();
		}
		return users;
	}
	
	@Override
	public Users confirmNickname(String nickname) {
		Users users = null;
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			UsersDao dao = session.getMapper(UsersDao.class);
			users = dao.confirmNickname(nickname);
		}finally{
			session.close();
		}
		return users;
	}
	
	/**
	 * 로그인
	 */
	@Override
	public Users login(Users user) throws RuntimeException{
		Users loginResult = null;
		SqlSession session = null;
		try{
			logger.debug("[DAO] + 로그인 요청");
			session = sqlSessionFactory.openSession();
			UsersDao dao = session.getMapper(UsersDao.class);
			loginResult = dao.login(user);
		}finally{
			session.close();
		}
		
		return loginResult;
	}

}
