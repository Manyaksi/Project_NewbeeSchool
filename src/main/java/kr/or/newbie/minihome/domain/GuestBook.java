package kr.or.newbie.minihome.domain;

public class GuestBook {
	
	private int guestbookOwner;
	private int guestbookNo;
	private int userNo;
	private int guestLike;
	private String guestContent;
	private String writeDate;
	
	public GuestBook() {
		super();
		// TODO Auto-generated constructor stub
	}

	public GuestBook(int guestbookOwner, int guestbookNo, int userNo,
			int guestLike, String guestContent, String writeDate) {
		super();
		this.guestbookOwner = guestbookOwner;
		this.guestbookNo = guestbookNo;
		this.userNo = userNo;
		this.guestLike = guestLike;
		this.guestContent = guestContent;
		this.writeDate = writeDate;
	}

	public int getGuestbookOwner() {
		return guestbookOwner;
	}

	public void setGuestbookOwner(int guestbookOwner) {
		this.guestbookOwner = guestbookOwner;
	}

	public int getGuestbookNo() {
		return guestbookNo;
	}

	public void setGuestbookNo(int guestbookNo) {
		this.guestbookNo = guestbookNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getGuestLike() {
		return guestLike;
	}

	public void setGuestLike(int guestLike) {
		this.guestLike = guestLike;
	}

	public String getGuestContent() {
		return guestContent;
	}

	public void setGuestContent(String guestContent) {
		this.guestContent = guestContent;
	}

	public String getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}

	@Override
	public String toString() {
		return "GuestBook [guestbookOwner=" + guestbookOwner + ", guestbookNo="
				+ guestbookNo + ", userNo=" + userNo + ", guestLike="
				+ guestLike + ", guestContent=" + guestContent + ", writeDate="
				+ writeDate + "]";
	}

}
