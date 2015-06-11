package kr.or.newbie.minihome.domain;

public class Users {
	private int userNo;
	private String programName;
	private String id;
	private String nickname;
	private String photo;
	private String location;
	private String password;
	private int point;
	private String grade;
	
	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Users(int userNo, String programName, String id, String nickname,
			String photo, String location, String password, int point,
			String grade) {
		super();
		this.userNo = userNo;
		this.programName = programName;
		this.id = id;
		this.nickname = nickname;
		this.photo = photo;
		this.location = location;
		this.password = password;
		this.point = point;
		this.grade = grade;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getProgramName() {
		return programName;
	}

	public void setProgramName(String programName) {
		this.programName = programName;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	@Override
	public String toString() {
		return "Users [userNo=" + userNo + ", programName=" + programName
				+ ", id=" + id + ", nickname=" + nickname + ", photo=" + photo
				+ ", location=" + location + ", password=" + password
				+ ", point=" + point + ", grade=" + grade + "]";
	}
	
	
	

}
