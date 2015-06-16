package kr.or.newbie.project.domain;

public class ProjectComment {
	private long groupNo;
	private int groupcommNo;
	private int userNo;
	private String groupcommContent;
	private String groupcommDate;
	
	public ProjectComment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ProjectComment(long groupNo, int groupcommNo, int userNo,
			String groupcommContent, String groupcommDate) {
		super();
		this.groupNo = groupNo;
		this.groupcommNo = groupcommNo;
		this.userNo = userNo;
		this.groupcommContent = groupcommContent;
		this.groupcommDate = groupcommDate;
	}

	public long getGroupNo() {
		return groupNo;
	}

	public void setGroupNo(long groupNo) {
		this.groupNo = groupNo;
	}

	public int getGroupcommNo() {
		return groupcommNo;
	}

	public void setGroupcommNo(int groupcommNo) {
		this.groupcommNo = groupcommNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getGroupcommContent() {
		return groupcommContent;
	}

	public void setGroupcommContent(String groupcommContent) {
		this.groupcommContent = groupcommContent;
	}

	public String getGroupcommDate() {
		return groupcommDate;
	}

	public void setGroupcommDate(String groupcommDate) {
		this.groupcommDate = groupcommDate;
	}

	@Override
	public String toString() {
		return "ProjectComment [groupNo=" + groupNo + ", groupcommNo="
				+ groupcommNo + ", userNo=" + userNo + ", groupcommContent="
				+ groupcommContent + ", groupcommDate=" + groupcommDate + "]";
	}
	
	

}
