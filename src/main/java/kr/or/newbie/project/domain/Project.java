package kr.or.newbie.project.domain;

public class Project {
	private long groupNo;
	private int userNo;
	private String groupLocation;
	private String latitude;
	private String longitude;
	private char passFail;
	private String groupSubject;
	private String groupContent;
	private int groupCount;
	private int groupMaxcount;
	private String startline;
	private String deadline;
	private String groupCategory;
	private String programName;
	
	public Project() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Project(long groupNo, int userNo, String groupLocation,
			String latitude, String longitude, char passFail,
			String groupSubject, String groupContent, int groupCount,
			int groupMaxcount, String startline, String deadline,
			String groupCategory, String programName) {
		super();
		this.groupNo = groupNo;
		this.userNo = userNo;
		this.groupLocation = groupLocation;
		this.latitude = latitude;
		this.longitude = longitude;
		this.passFail = passFail;
		this.groupSubject = groupSubject;
		this.groupContent = groupContent;
		this.groupCount = groupCount;
		this.groupMaxcount = groupMaxcount;
		this.startline = startline;
		this.deadline = deadline;
		this.groupCategory = groupCategory;
		this.programName = programName;
	}

	public long getGroupNo() {
		return groupNo;
	}

	public void setGroupNo(long groupNo) {
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

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
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

	public String getProgramName() {
		return programName;
	}

	public void setProgramName(String programName) {
		this.programName = programName;
	}

	@Override
	public String toString() {
		return "Project [groupNo=" + groupNo + ", userNo=" + userNo
				+ ", groupLocation=" + groupLocation + ", latitude=" + latitude
				+ ", longitude=" + longitude + ", passFail=" + passFail
				+ ", groupSubject=" + groupSubject + ", groupContent="
				+ groupContent + ", groupCount=" + groupCount
				+ ", groupMaxcount=" + groupMaxcount + ", startline="
				+ startline + ", deadline=" + deadline + ", groupCategory="
				+ groupCategory + ", programName=" + programName + "]";
	}
	
	

}
