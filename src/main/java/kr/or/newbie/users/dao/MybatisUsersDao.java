package kr.or.newbie.users.dao;

import java.util.List;
import java.util.Map;

import kr.or.newbie.article.dao.ArticleDao;
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

	/**
	 * 유저 정보
	 */
	@Override
	public Users userInfo(int user_no) {
		Users user = null;
		SqlSession session = null;
		try {
			
			session = sqlSessionFactory.openSession();
			UsersDao dao = session.getMapper(UsersDao.class);
			user = dao.userInfo(user_no);
			
		} finally{
			session.close();
		}
		
		return user;
	}

	/**
	 * 회원정보 수정들
	 */
	
	//닉네임 수정
	@Override
	public void nicknameEdit(Map<String, String> params) {
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			UsersDao dao = session.getMapper(UsersDao.class);
			dao.nicknameEdit(params);
		}finally{
			session.close();
		}
	}

	//이메일 수정
	@Override
	public void emailEdit(Map<String, String> params) {
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			UsersDao dao = session.getMapper(UsersDao.class);
			dao.emailEdit(params);
		}finally{
			session.close();
		}
		
	}

	//비밀번호 수정
	@Override
	public void passwdEdit(Map<String, String> params) {
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			UsersDao dao = session.getMapper(UsersDao.class);
			dao.passwdEdit(params);
		}finally{
			session.close();
		}
		
	}

	//지역 수정
	@Override
	public void locationEdit(Map<String, String> params) {
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			UsersDao dao = session.getMapper(UsersDao.class);
			dao.locationEdit(params);
		}finally{
			session.close();
		}
		
	}

	//프로그램 수정
	@Override
	public void programnameEdit(Map<String, String> params) {
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			UsersDao dao = session.getMapper(UsersDao.class);
			dao.programnameEdit(params);
		}finally{
			session.close();
		}
		
	}
	
	//사진 수정
	@Override
	public void registPhoto(Map<String, String> params) {
		SqlSession session = null;
		try{
			session = sqlSessionFactory.openSession();
			UsersDao dao = session.getMapper(UsersDao.class);
			dao.registPhoto(params);
		}finally{
			session.close();
		}
		
	}

	/**
	 * 작성 게시글 수
	 */
	@Override
	public List<Map<String, Object>> articleCount(int user_no) {
		List<Map<String, Object>> articleCount = null;
		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			UsersDao dao = session.getMapper(UsersDao.class);
			articleCount = dao.articleCount(user_no);

		} finally {
			session.close();
		}
		
		return articleCount;
	}
	

	/**
	 * 작성 댓글 수
	 */
	@Override
	public List<Map<String, Object>> commentCount(int user_no) {
		List<Map<String, Object>> commentCount = null;
		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			UsersDao dao = session.getMapper(UsersDao.class);
			commentCount = dao.commentCount(user_no);

		} finally {
			session.close();
		}
		
		return commentCount;
	}
	
	/**
	 * 댓글 삭제
	 */
	
	@Override
	public void mycommentRemove(int comment_no) {
		
		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			UsersDao dao = session.getMapper(UsersDao.class);
			dao.mycommentRemove(comment_no);
			
		} finally {
			session.close();
		}
		
	}

}
