package kr.or.newbie.project.domain;

public class Project {
	private int group_no;
	private int user_no;
	private String group_location;
	private char pass_fail;
	private String group_subject;
	private String group_content;
	private String startline;
	private String deadline;
	private String group_category;
	
	public Project() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Project(int group_no, int user_no, String group_location,
			char pass_fail, String group_subject, String group_content,
			String startline, String deadline, String group_category) {
		super();
		this.group_no = group_no;
		this.user_no = user_no;
		this.group_location = group_location;
		this.pass_fail = pass_fail;
		this.group_subject = group_subject;
		this.group_content = group_content;
		this.startline = startline;
		this.deadline = deadline;
		this.group_category = group_category;
	}

	public int getGroup_no() {
		return group_no;
	}

	public void setGroup_no(int group_no) {
		this.group_no = group_no;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getGroup_location() {
		return group_location;
	}

	public void setGroup_location(String group_location) {
		this.group_location = group_location;
	}

	public char getPass_fail() {
		return pass_fail;
	}

	public void setPass_fail(char pass_fail) {
		this.pass_fail = pass_fail;
	}

	public String getGroup_subject() {
		return group_subject;
	}

	public void setGroup_subject(String group_subject) {
		this.group_subject = group_subject;
	}

	public String getGroup_content() {
		return group_content;
	}

	public void setGroup_content(String group_content) {
		this.group_content = group_content;
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

	public String getGroup_category() {
		return group_category;
	}

	public void setGroup_category(String group_category) {
		this.group_category = group_category;
	}

	@Override
	public String toString() {
		return "Project [group_no=" + group_no + ", user_no=" + user_no
				+ ", group_location=" + group_location + ", pass_fail="
				+ pass_fail + ", group_subject=" + group_subject
				+ ", group_content=" + group_content + ", startline="
				+ startline + ", deadline=" + deadline + ", group_category="
				+ group_category + "]";
	}
	
	

}
