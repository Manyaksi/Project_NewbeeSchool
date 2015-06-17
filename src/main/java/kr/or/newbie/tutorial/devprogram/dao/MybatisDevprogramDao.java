package kr.or.newbie.tutorial.devprogram.dao;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import kr.or.newbie.tutorial.devprogram.domain.Devcomment;
import kr.or.newbie.tutorial.devprogram.domain.Devprogram;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("Devprogramdao")
public class MybatisDevprogramDao implements Devprogramdao {

	@Autowired
	private SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}

	/*
	 * @Override public List<Devprogram> showDevprogramList() {
	 * 
	 * List<Devprogram> devprogramList = null; SqlSession session = null; try{
	 * session = sqlSessionFactory.openSession(); Devprogramdao dao =
	 * session.getMapper(Devprogramdao.class); devprogramList =
	 * dao.showDevprogramList(); }finally{ session.close(); } return
	 * devprogramList; }
	 */

	@Override
	public void add(Devprogram devprogram) throws RuntimeException {

		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			Devprogramdao dao = session.getMapper(Devprogramdao.class);
			dao.add(devprogram);
			System.out.println("새로운 글 등록");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
	}

	// 설치법 목록
	@Override
	public List<Map<String, Object>> showDevprogramList(Map<String, Object> map) {
		List<Map<String, Object>> map2 = null;
		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			Devprogramdao dao = session.getMapper(Devprogramdao.class);
			map2 = dao.showDevprogramList(map);
		} finally {
			session.close();
		}
		return map2;
	}

	// 상세보기
	@Override
	public Devprogram showDevprogramdetail(Map<String, String> map) {
		Iterator<String> iter = map.keySet().iterator();
		while (iter.hasNext()) {
			String string = (String) iter.next();
			System.out.println(string + ", " + map.get(string));
		}
		Devprogram devprogram = null;
		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			Devprogramdao dao = session.getMapper(Devprogramdao.class);
			devprogram = dao.showDevprogramdetail(map);
		} finally {
			session.close();
		}
		return devprogram;
	}

	// 댓글 등록
	@Override
	public void commentAdd(Map<String, Object> params) {
		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			Devprogramdao dao = session.getMapper(Devprogramdao.class);
			dao.commentAdd(params);
		} finally {
			session.close();
		}
	}

	// 댓글 목록
	@Override
	public List<Map<String, Object>> commentList(Map<String, String> params) {
		List<Map<String, Object>> commentList = null;
		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			Devprogramdao dao = session.getMapper(Devprogramdao.class);
			commentList = dao.commentList(params);
		} finally {
			session.close();
		}
		return commentList;
	}

	// 댓글 삭제 
	@Override
	public void commentDelete(int review_no) {
		
		SqlSession session = null;
		try {
			session = sqlSessionFactory.openSession();
			Devprogramdao dao = session.getMapper(Devprogramdao.class);
			dao.commentDelete(review_no);
		} finally {
			session.close();
		}
	}

	/*
	 * // 댓글 등록
	 * 
	 * @Override public void commentadd(Devcomment devcomment) throws
	 * RuntimeException { SqlSession session = null; try{ session =
	 * sqlSessionFactory.openSession(); Devprogramdao dao =
	 * session.getMapper(Devprogramdao.class); dao.commentadd(devcomment);
	 * }catch(Exception e){ e.printStackTrace(); }finally{ session.close(); } }
	 * 
	 * // 댓글 목록
	 * 
	 * @Override public List<Map<String, Object>> commentList(Map<String,
	 * String> params) throws RuntimeException { List<Map<String, Object>> map =
	 * null; SqlSession session = null; try{ session =
	 * sqlSessionFactory.openSession(); Devprogramdao dao =
	 * session.getMapper(Devprogramdao.class); map = dao.commentList(params);
	 * }finally{ session.close(); } return map; }
	 * 
	 * 
	 * 
	 * // 댓글 상세보기
	 * 
	 * @Override public Devcomment commentDetail(String programName, int userNo)
	 * throws RuntimeException { Devcomment devcomment = null; SqlSession
	 * session = null; try{ session = sqlSessionFactory.openSession();
	 * Devprogramdao dao = session.getMapper(Devprogramdao.class); devcomment =
	 * dao.commentDetail(programName, userNo); }finally{ session.close(); }
	 * return devcomment; }
	 */

}
