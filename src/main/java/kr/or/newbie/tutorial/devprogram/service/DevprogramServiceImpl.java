package kr.or.newbie.tutorial.devprogram.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.newbie.tutorial.devprogram.dao.Devprogramdao;
import kr.or.newbie.tutorial.devprogram.domain.Devcomment;
import kr.or.newbie.tutorial.devprogram.domain.Devprogram;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("devprogramService")
public class DevprogramServiceImpl implements DevprogramService {

	@Autowired
	private Devprogramdao devprogramDao;

	public DevprogramServiceImpl() {
	}

	public Devprogramdao getDevprogramDao() {
		return devprogramDao;
	}

	public void setDevprogramDao(Devprogramdao devprogramDao) {
		this.devprogramDao = devprogramDao;
	}

	// 설치글 등록
	@Override
	public void regist(Devprogram devprogram) throws RuntimeException {
		devprogramDao.add(devprogram);
		System.out.println("[debug] : 게시글 등록 완료");
	}

	// 설치글 목록
	@Override
	public List<Map<String, Object>> showDevprogramList() {
		System.out.println("[Debug] : 설치글 목록 출력");
		return devprogramDao.showDevprogramList();
	}

	// 설치글 상세보기
	@Override
	public Devprogram showDevprogramdetail(String programName, String programOs) {
		Devprogram devprogram = devprogramDao.showDevprogramdetail(programName);
		return devprogram;
	}

	// 댓글 목록
	@Override
	public List<Map<String, Object>> commentList(String programName, String programOs) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("program_name", programName);
		params.put("program_os", programOs);

		return devprogramDao.commentList(params);
	}

	// 댓글 등록
	@Override
	public void commentAdd(String programName, String reviewContent, int userNo, int reviewNo) {
		Map<String, String> params = new HashMap<String, String>();
		String test = String.valueOf(programName);
		params.put("programName", programName);
		params.put("reviewContent", reviewContent);
		params.put("userNo", String.valueOf(userNo));
		params.put("reviewNo", String.valueOf(reviewNo));
	}


	/*
	 * // 댓글 목록
	 * 
	 * @Override public List<Map<String, Object>> commentList(String
	 * programName, String programOs) { return
	 * devprogramDao.commentList(programName, programOs); }
	 * 
	 * // 댓글 등록
	 * 
	 * @Override public void commentadd(Devcomment devcomment) throws
	 * RuntimeException { devprogramDao.commentadd(devcomment);
	 * System.out.println("[debug] : 댓글 등록 완료"); }
	 * 
	 * // 댓글 목록
	 * 
	 * @Override public List<Map<String, Object>> commentList(String
	 * ProgramName, int userNo) throws RuntimeException {
	 * System.out.println("[Debug] : 댓글 목록 출력"); Map<String, String> params =
	 * new HashMap<String, String>();
	 * 
	 * params.put("programName", ProgramName); params.put("userNo",
	 * String.valueOf(userNo));
	 * 
	 * return devprogramDao.commentList(params); }
	 * 
	 * // 댓글 상세보기
	 * 
	 * @Override public Devcomment commentDetail(String programName, int userNo)
	 * throws RuntimeException { Devcomment devcomment =
	 * devprogramDao.commentDetail(programName, userNo); return devcomment; }
	 */
}
