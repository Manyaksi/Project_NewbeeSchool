package kr.or.newbie.article.domain;

public class Article {

	
	int article_no;
	int user_no;
	String program_name;
	String subject; 
	String content; 
	String category;
	String write_date;
	int hit_count;
	int like_count;
	String notice;
	
	public Article(){
		super();
	}
	
	public Article(int article_no, int user_no, String program_name,
			String subject, String content, String category, String write_date,
			int hit_count, int like, String notice) {
		super();
		this.article_no = article_no;
		this.user_no = user_no;
		this.program_name = program_name;
		this.subject = subject;
		this.content = content;
		this.category = category;
		this.write_date = write_date;
		this.hit_count = hit_count;
		this.like_count = like;
		this.notice = notice;
	}

	public int getArticle_no() {
		return article_no;
	}

	public void setArticle_no(int article_no) {
		this.article_no = article_no;
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

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getWrite_date() {
		return write_date;
	}

	public void setWrite_date(String write_date) {
		this.write_date = write_date;
	}

	public int getHit_count() {
		return hit_count;
	}

	public void setHit_count(int hit_count) {
		this.hit_count = hit_count;
	}

	

	public int getLike_count() {
		return like_count;
	}

	public void setLike_count(int like_count) {
		this.like_count = like_count;
	}

	public String getNotice() {
		return notice;
	}

	public void setNotice(String notice) {
		this.notice = notice;
	}

	@Override
	public String toString() {
		return "Board [article_no=" + article_no + ", user_no=" + user_no
				+ ", program_name=" + program_name + ", subject=" + subject
				+ ", content=" + content + ", category=" + category
				+ ", write_date=" + write_date + ", hit_count=" + hit_count
				+ ", like=" + like_count + ", notice=" + notice + "]";
	}
	
	
	
	

}
