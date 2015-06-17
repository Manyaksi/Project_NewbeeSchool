package kr.or.newbie.article.domain;

public class ArticleComment {
	
	int comment_no;
	int article_no;
	String nickname;
	String program_name;
	String comment_content;
	String comment_date;
	int step_no;
	int order_no;
	
	
	
	public ArticleComment() {
		super();
	}



	public ArticleComment(int comment_no, int article_no, String nickname,
			String program_name, String comment_content, String comment_date,
			int step_no, int order_no) {
		super();
		this.comment_no = comment_no;
		this.article_no = article_no;
		this.nickname = nickname;
		this.program_name = program_name;
		this.comment_content = comment_content;
		this.comment_date = comment_date;
		this.step_no = step_no;
		this.order_no = order_no;
	}



	public int getComment_no() {
		return comment_no;
	}



	public void setComment_no(int comment_no) {
		this.comment_no = comment_no;
	}



	public int getArticle_no() {
		return article_no;
	}



	public void setArticle_no(int article_no) {
		this.article_no = article_no;
	}



	public String getNickname() {
		return nickname;
	}



	public void setNickname(String nickname) {
		this.nickname = nickname;
	}



	public String getProgram_name() {
		return program_name;
	}



	public void setProgram_name(String program_name) {
		this.program_name = program_name;
	}



	public String getComment_content() {
		return comment_content;
	}



	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}



	public String getComment_date() {
		return comment_date;
	}



	public void setComment_date(String comment_date) {
		this.comment_date = comment_date;
	}



	public int getStep_no() {
		return step_no;
	}



	public void setStep_no(int step_no) {
		this.step_no = step_no;
	}



	public int getOrder_no() {
		return order_no;
	}



	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}



	@Override
	public String toString() {
		return "ArticleComment [comment_no=" + comment_no + ", article_no="
				+ article_no + ", nickname=" + nickname + ", program_name="
				+ program_name + ", comment_content=" + comment_content
				+ ", comment_date=" + comment_date + ", step_no=" + step_no
				+ ", order_no=" + order_no + "]";
	}
	
	
	
	

}
