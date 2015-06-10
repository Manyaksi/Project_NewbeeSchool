package kr.or.newbie.users.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.newbie.project.dao.ProjectDao;
import kr.or.newbie.project.domain.Project;
import kr.or.newbie.users.dao.UsersDao;
import kr.or.newbie.users.domain.Users;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/** 
 * 회원정보 관련 비즈니스 메소드 구현 Business Object
 * @author 김원영
 */
@Service("usersService")
public class UsersServiceImpl implements UsersService{
	
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
	
	
}
