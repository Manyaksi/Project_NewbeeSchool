package kr.or.newbie.users.service;

import java.util.List;
import java.util.Map;

import kr.or.newbie.users.controller.UsersController;
import kr.or.newbie.users.dao.UsersDao;
import kr.or.newbie.users.domain.Users;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

/** 
 * 회원정보 관련 비즈니스 메소드 구현 Business Object
 * @author 김원영
 */
@Service("usersService")
public class UsersServiceImpl implements UsersService{
	
	private static final Logger logger = LoggerFactory.getLogger(UsersController.class);

	
	@Autowired
	private UsersDao usersDao;
	
	public UsersServiceImpl(){}
	
	public UsersDao getProjectDao() {
		return usersDao;
	}
	public void setProjectDao(UsersDao usersDao) {
		this.usersDao = usersDao;
	}
	
	@Override
	public void joinNewbie(Users users) {
		System.out.println("[Debug] : 회원가입 요청");
		usersDao.joinNewbie(users);
	}

	@Override
	public List<Users> selectUserList(Map<String, String> map)
			throws DataAccessException {
		return usersDao.selectUserList(map);
	}
	
	@Override
	public Users confirmEmail(String id) {
		return usersDao.confirmEmail(id);
	}
	
	@Override
	public Users confirmNickname(String nickname) {
		return usersDao.confirmNickname(nickname);
	}

	@Override
	public Users confirmUsers(String id, String password) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public Users login(Users users) throws RuntimeException {
		return usersDao.login(users);
	}
}
