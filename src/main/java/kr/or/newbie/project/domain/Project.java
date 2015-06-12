package kr.or.newbie.project.domain;

public class Project {
	private int groupNo;
	private int userNo;
	private String groupLocation;
	private char passFail;
	private String groupSubject;
	private String groupContent;
	private int groupCount;
	private int groupMaxcount;
	private String startline;
	private String deadline;
	private String groupCategory;
	private String nickName;
	
	public Project() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Project(int groupNo, int userNo, String groupLocation,
			char passFail, String groupSubject, String groupContent,
			int groupCount, int groupMaxcount, String startline,
			String deadline, String groupCategory) {
		super();
		this.groupNo = groupNo;
		this.userNo = userNo;
		this.groupLocation = groupLocation;
		this.passFail = passFail;
		this.groupSubject = groupSubject;
		this.groupContent = groupContent;
		this.groupCount = groupCount;
		this.groupMaxcount = groupMaxcount;
		this.startline = startline;
		this.deadline = deadline;
		this.groupCategory = groupCategory;
	}
	
	public Project(int groupNo, int userNo, String groupLocation,
			char passFail, String groupSubject, String groupContent,
			int groupCount, int groupMaxcount, String startline,
			String deadline, String groupCategory, String nickName) {
		super();
		this.groupNo = groupNo;
		this.userNo = userNo;
		this.groupLocation = groupLocation;
		this.passFail = passFail;
		this.groupSubject = groupSubject;
		this.groupContent = groupContent;
		this.groupCount = groupCount;
		this.groupMaxcount = groupMaxcount;
		this.startline = startline;
		this.deadline = deadline;
		this.groupCategory = groupCategory;
		this.nickName = nickName;
	}

	public int getGroupNo() {
		return groupNo;
	}

	public void setGroupNo(int groupNo) {
		this.groupNo = groupNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getGroupLocation() {
		return groupLocation;
	}

	public void setGroupLocation(String groupLocation) {
		this.groupLocation = groupLocation;
	}

	public char getPassFail() {
		return passFail;
	}

	public void setPassFail(char passFail) {
		this.passFail = passFail;
	}

	public String getGroupSubject() {
		return groupSubject;
	}

	public void setGroupSubject(String groupSubject) {
		this.groupSubject = groupSubject;
	}

	public String getGroupContent() {
		return groupContent;
	}

	public void setGroupContent(String groupContent) {
		this.groupContent = groupContent;
	}

	public int getGroupCount() {
		return groupCount;
	}

	public void setGroupCount(int groupCount) {
		this.groupCount = groupCount;
	}

	public int getGroupMaxcount() {
		return groupMaxcount;
	}

	public void setGroupMaxcount(int groupMaxcount) {
		this.groupMaxcount = groupMaxcount;
	}

	public String getStartline() {
		return startline;
	}

	public void setStartline(String startline) {
		this.startline = startline;
	}

	public String getDeadline() {
		return deadline;
	}

	public void setDeadline(String deadline) {
		this.deadline = deadline;
	}

	public String getGroupCategory() {
		return groupCategory;
	}

	public void setGroupCategory(String groupCategory) {
		this.groupCategory = groupCategory;
	}

	
	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	@Override
	public String toString() {
		return "Project [group_no=" + groupNo + ", user_no=" + userNo
				+ ", group_location=" + groupLocation + ", pass_fail="
				+ passFail + ", group_subject=" + groupSubject
				+ ", group_content=" + groupContent + ", group_count="
				+ groupCount + ", group_maxcount=" + groupMaxcount
				+ ", startline=" + startline + ", deadline=" + deadline
				+ ", group_category=" + groupCategory + "]";
	}

	

}
