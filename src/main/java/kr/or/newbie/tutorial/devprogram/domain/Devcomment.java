package kr.or.newbie.tutorial.devprogram.domain;

public class Devcomment {
	
	private String programName;
	private String programOs;
	private int reviewNo;
	private int userNo;
	private String reviewContent;
	private String reviewDate;
	
	public Devcomment() {
		this(null, null, 0, 0, null, null);
	}

	public Devcomment(String programName, String programOs, int reviewNo,
			int userNo, String reviewContent, String reviewDate) {
		super();
		this.programName = programName;
		this.programOs = programOs;
		this.reviewNo = reviewNo;
		this.userNo = userNo;
		this.reviewContent = reviewContent;
		this.reviewDate = reviewDate;
	}

	public String getProgramName() {
		return programName;
	}

	public void setProgramName(String programName) {
		this.programName = programName;
	}

	public String getProgramOs() {
		return programOs;
	}

	public void setProgramOs(String programOs) {
		this.programOs = programOs;
	}

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public String getReviewDate() {
		return reviewDate;
	}

	public void setReviewDate(String reviewDate) {
		this.reviewDate = reviewDate;
	}

	@Override
	public String toString() {
		return "Devcomment [programName=" + programName + ", programOs="
				+ programOs + ", reviewNo=" + reviewNo + ", userNo=" + userNo
				+ ", reviewContent=" + reviewContent + ", reviewDate="
				+ reviewDate + "]";
	}
	
}
