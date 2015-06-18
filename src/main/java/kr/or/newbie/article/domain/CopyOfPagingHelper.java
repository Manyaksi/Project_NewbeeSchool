package kr.or.newbie.article.domain;


/**
 * 페이징
 * 
 * @author 김민수
 */
public class CopyOfPagingHelper {
	
	//페이지 상수
	public static final int count_List = 5;
	
	public static final int count_Page = 5;

	// 페이지당 보여질 행의 갯수
	private int rowCountPerPage;
	// 페이지당 보여질 페이지 개수
	private int pageCountPerPage;
	// 조회된 전체행 갯수
	private int totalRowCount;
	// 사용자 요청 페이지
	private int requestPage;

	// 전체페이지 갯수
	private int totalPageCount;
	// 목록(그룹) 번호
	private int listNo;
	// 이전 목록의 시작페이지 번호
	private int startNoOfPreviousList;
	// 현재 목록의 시작페이지 번호
	private int startNoOfCurrentList;
	// 현재 목록의 마지막페이지 번호
	private int endNoOfCurrentList;
	// 다음 목록의 시작페이지 번호
	private int startNoOfNextList;

	public CopyOfPagingHelper(int rowCountPerPage, int pageCountPerPage,
			int totalRowCount, int requestPage) {
		this.rowCountPerPage = rowCountPerPage;
		this.pageCountPerPage = pageCountPerPage;
		this.totalRowCount = totalRowCount;
		this.requestPage = requestPage;
	}

	public int getRowCountPerPage() {
		return rowCountPerPage;
	}

	public void setRowCountPerPage(int rowCountPerPage) {
		this.rowCountPerPage = rowCountPerPage;
	}

	public int getPageCountPerPage() {
		return pageCountPerPage;
	}

	public void setPageCountPerPage(int pageCountPerPage) {
		this.pageCountPerPage = pageCountPerPage;
	}

	public int getTotalRowCount() {
		return totalRowCount;
	}

	public void setTotalRowCount(int totalRowCount) {
		this.totalRowCount = totalRowCount;
	}

	public int getRequestPage() {
		return requestPage;
	}

	public void setRequestPage(int requestPage) {
		this.requestPage = requestPage;
	}

	public int getTotalPageCount() {
		return totalPageCount;
	}

	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}

	public int getListNo() {
		return listNo;
	}

	public void setListNo(int listNo) {
		this.listNo = listNo;
	}

	public int getStartNoOfCurrentList() {
		return startNoOfCurrentList;
	}

	public void setStartNoOfCurrentList(int startNoOfCurrentList) {
		this.startNoOfCurrentList = startNoOfCurrentList;
	}

	public int getEndNoOfCurrentList() {
		return endNoOfCurrentList;
	}

	public void setEndNoOfCurrentList(int endNoOfCurrentList) {
		this.endNoOfCurrentList = endNoOfCurrentList;
	}

	public int getStartNoOfPreviousList() {
		return startNoOfPreviousList;
	}

	public void setStartNoOfPreviousList(int startNoOfPreviousList) {
		this.startNoOfPreviousList = startNoOfPreviousList;
	}

	public int getStartNoOfNextList() {
		return startNoOfNextList;
	}

	public void setStartNoOfNextList(int startNoOfNextList) {
		this.startNoOfNextList = startNoOfNextList;
	}

	/** 페이징 처리 계산 */
	public void calculate() {
		// 전체페이지수 계산
		totalPageCount = (int) Math.ceil((double) totalRowCount
				/ rowCountPerPage);

		// 현재 목록의 시작페이지번호와 마지막페이지번호 계산
		listNo = (requestPage - 1) / pageCountPerPage;
		// (1~5): 0, (6~10): 1, (11~15): 2, .....
		startNoOfCurrentList = (listNo * pageCountPerPage) + 1;
		endNoOfCurrentList = (listNo * pageCountPerPage) + pageCountPerPage;

		// 이전 목록의 시작페이지 번호 계산
		startNoOfPreviousList = startNoOfCurrentList - pageCountPerPage;
		if (startNoOfPreviousList < 0) { // 첫번째 목록인 경우
			startNoOfPreviousList = 1; // 1페이지로 설정
		}

		// 다음 목록의 시작페이지 번호 계산
		startNoOfNextList = startNoOfCurrentList + pageCountPerPage;

		if (startNoOfCurrentList > totalPageCount) {
			if (totalPageCount != 0) {
				startNoOfCurrentList = startNoOfCurrentList - pageCountPerPage
						+ 1;
			}
		}
		if (endNoOfCurrentList > totalPageCount) {
			endNoOfCurrentList = totalPageCount;
		}
	}

	/** 현재 목록에서 [처음으로] 출력 여부 반환 */
	public boolean isShowFirst() {
		return listNo > 0;
	}

	/** 현재 목록에서 [이전목록] 출력 여부 반환 */
	public boolean isShowPreviousList() {
		return listNo > 0;
	}

	/** 현재 목록에서 [이전페이지] 출력 여부 반환 */
	public boolean isShowPreviousPage() {
		if (requestPage > 1) {
			return true;
		}
		return false;
	}

	/** 현재 목록에서 [다음페이지] 출력 여부 반환 */
	public boolean isShowNextPage() {
		if (requestPage < totalPageCount) {
			return true;
		}
		return false;
	}

	/** 현재 목록에서 [다음목록] 출력 여부 반환 */
	public boolean isShowNextList() {
		if (endNoOfCurrentList < totalPageCount) {
			return true;
		}
		return false;
	}

	/** 현재 목록에서 [끝으로] 출력 여부 반환 */
	public boolean isShowLast() {
		if (endNoOfCurrentList < totalPageCount) {
			return true;
		}
		return false;
	}

	@Override
	public String toString() {
		return "Page [rowCountPerPage=" + rowCountPerPage
				+ ", pageCountPerPage=" + pageCountPerPage + ", totalRowCount="
				+ totalRowCount + ", requestPage=" + requestPage
				+ ", totalPageCount=" + totalPageCount + ", listNo=" + listNo
				+ ", startNoOfCurrentList=" + startNoOfCurrentList
				+ ", endNoOfCurrentList=" + endNoOfCurrentList
				+ ", startNoOfPreviousList=" + startNoOfPreviousList
				+ ", startNoOfNextList=" + startNoOfNextList + "]";
	}

	/** 페이징 처리 목록을 HTML로 반환 */
	/** 페이징 처리 목록을 HTML로 반환 */
	public String toHtml(String programName,String searchType, String searchValue) {
		String pageListhtml = "";
		String searchQuery = "";

		// 전체검색이 아닌경우 쿼리스트링 추가
		if (!searchType.equals("")) {
			searchQuery = "&searchType=" +"%"+ searchType+"%" + "&searchValue="
					+ "%"+searchValue+"%";
		}

		// 처음으로 보여주기 여부
		if (isShowFirst()) {
			pageListhtml += "<span><a href=/board/paging?program_name="+programName+"&page=1" + searchQuery
					+ "'>|처음으로|</a></span>";
		}else{
			pageListhtml += "<span>|처음으로|</span>";
		}

		// 이전목록 보여주기 여부
		if (isShowPreviousList()) {
			pageListhtml += "<span><a href=/board/paging?program_name="+programName+"&page=" + startNoOfPreviousList
					+ searchQuery + "'>|이전목록|</a></span>";
		}else{
			pageListhtml += "<span>|이전목록|</span>";
		}

		// 이전 페이지 보여주기 여부
		if (isShowPreviousPage()) {
			pageListhtml += "<span><a href=/board/paging?program_name="+programName+"&page=" + (requestPage - 1)
					+ searchQuery + "'>|이전페이지|</a></span>";
		}else{
			pageListhtml += "<span>|이전페이지|</span>";
		} 

		// totlaCount 0일때
		if (totalPageCount == 0) {
			pageListhtml += "<span>0</span>";
		}

		pageListhtml += "<span>|</span>";

		// 페이지 번호 반복
		for (int i = startNoOfCurrentList; i <= endNoOfCurrentList; i++) {
			if (i == requestPage) {
				pageListhtml += "<span class='selected'>" + i + "</span>";
			} else {
				pageListhtml += "<span><a href=/board/paging?program_name="+programName+"&page=" + i + searchQuery
						+ ">" + i + "</a></span>";
			}
			pageListhtml += "<span>|</span>";
		}

		// 다음 페이지 보여주기 여부
		if (isShowNextPage()) {
			pageListhtml += "<div class=btn><span><a href=/board/paging?program_name="+programName+"&page=" + (requestPage + 1)
					+ searchQuery + "'>|다음페이지|</a></span><div>";
		}else{
			pageListhtml += "<span><a href=/board/paging?program_name="+programName+"&page=" + (requestPage + 1)
					+ searchQuery + "'>|다음페이지|</a></span>";
		}

		// 다음 목록 보여주기 여부
		if (isShowNextList()) {
			pageListhtml += "<span><a href=/board/paging?program_name="+programName+"&page=" + startNoOfNextList
					+ searchQuery + "'>|다음목록|</a></span>";

		}else{
			pageListhtml += "<span><a href=/board/paging?program_name="+programName+"&page=" + startNoOfNextList
					+ searchQuery + "'>|다음목록|</a></span>";
		}

		// 끝으로 보여주기 여부
		if (isShowLast()) {
			pageListhtml += "<span><a href=/board/paging?program_name="+programName+"&page=" + totalPageCount
					+ searchQuery + "'>|끝으로|</a></span>";
		}else{
			pageListhtml += "<span`><a href=/board/paging?program_name="+programName+"&page=" + totalPageCount
					+ searchQuery + "'>|끝으로|</a></span>";
		}
		return pageListhtml;
	}
	
	
	public String toHtml(String searchType, String searchValue) {
		String pageListhtml = "";
		String searchQuery = "";

		// 전체검색이 아닌경우 쿼리스트링 추가
		if (!searchType.equals("")) {
			searchQuery = "&searchType=" + searchType + "&searchValue="
					+ "%"+searchValue+"%";
		}

		// 처음으로 보여주기 여부
		if (isShowFirst()) {
			pageListhtml += "<span><a href='?page=1" + searchQuery
					+ "'>|처음으로|</a></span>";
		}else{
			pageListhtml += "<span>|처음으로|</span>";
		}

		// 이전목록 보여주기 여부
		if (isShowPreviousList()) {
			pageListhtml += "<span><a href='?page=" + startNoOfPreviousList
					+ searchQuery + "'>|이전목록|</a></span>";
		}else{
			pageListhtml += "<span>|이전목록|</span>";
		}

		// 이전 페이지 보여주기 여부
		if (isShowPreviousPage()) {
			pageListhtml += "<span><a href='?page=" + (requestPage - 1)
					+ searchQuery + "'>|이전페이지|</a></span>";
		}else{
			pageListhtml += "<span>|이전페이지|</span>";
		} 

		// totlaCount 0일때
		if (totalPageCount == 0) {
			pageListhtml += "<span>0</span>";
		}

		pageListhtml += "<span>|</span>";

		// 페이지 번호 반복
		for (int i = startNoOfCurrentList; i <= endNoOfCurrentList; i++) {
			if (i == requestPage) {
				pageListhtml += "<span class='selected'>" + i + "</span>";
			} else {
				pageListhtml += "<span><a href='?page=" + i + searchQuery
						+ "'>" + i + "</a></span>";
			}
			pageListhtml += "<span>|</span>";
		}

		// 다음 페이지 보여주기 여부
		if (isShowNextPage()) {
			pageListhtml += "<span><a href='?page=" + (requestPage + 1)
					+ searchQuery + "'>|다음페이지|</a></span>";
		}

		// 다음 목록 보여주기 여부
		if (isShowNextList()) {
			pageListhtml += "<span><a href='?page=" + startNoOfNextList
					+ searchQuery + "'>|다음목록|</a></span>";

		}

		// 끝으로 보여주기 여부
		if (isShowLast()) {
			pageListhtml += "<span><a href='?page=" + totalPageCount
					+ searchQuery + "'>|끝으로|</a></span>";
		}
		return pageListhtml;
	}

	// 테스트을 위한 main
	public static void main(String[] args) {
		CopyOfPagingHelper pagingHelper = new CopyOfPagingHelper(10, 5, 56, 2);
		System.out.println(pagingHelper.getTotalPageCount());
		/*
		 * pagingHelper.calculate(); System.out.println("전체게시물수: " +
		 * pagingHelper.getTotalRowCount()); System.out.println("현재페이지: " +
		 * pagingHelper.getRequestPage()); System.out.println("전체페이지: " +
		 * pagingHelper.getTotalPageCount());
		 * System.out.println(pagingHelper.toHtml("", ""));//전체검색
		 */
	}
}
