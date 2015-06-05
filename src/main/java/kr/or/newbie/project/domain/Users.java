package kr.or.newbie.project.domain;

public class Users {
	private int user_no;
	private String program_name;
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

	public Users(int user_no, String program_name, String id, String nickname,
			String photo, String location, String password, int point,
			String grade) {
		super();
		this.user_no = user_no;
		this.program_name = program_name;
		this.id = id;
		this.nickname = nickname;
		this.photo = photo;
		this.location = location;
		this.password = password;
		this.point = point;
		this.grade = grade;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getProgram_name() {
		return program_name;
	}

	public void setProgram_name(String program_name) {
		this.program_name = program_name;
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
		return "Users [user_no=" + user_no + ", program_name=" + program_name
				+ ", id=" + id + ", nickname=" + nickname + ", photo=" + photo
				+ ", location=" + location + ", password=" + password
				+ ", point=" + point + ", grade=" + grade + "]";
	}
	
	
	

}
