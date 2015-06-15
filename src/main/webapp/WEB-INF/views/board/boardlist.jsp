<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<div class="col-md-10">


	<div class="board-header">
		<div id="board-header-tabs">
			<a class="total-tab" href="/board/categorylist?category=${category }&program_name=${programName }&orderby=total"><span class="total-num">${size }</span>전체</a> 
			<a class="hit-tab" href="/board/orderbyList?category=${category }&program_name=${programName }&orderby=hit_count">조회 순</a> 
			<a class="comment-tab" href="/board/orderbyList?category=${category }&program_name=${programName }&orderby=commentcount"">댓글 순</a>
			<a class="like-tab" href="/board/orderbyList?category=${category }&program_name=${programName }&orderby=like_count">추천 순</a>
		</div>
	</div>


  <c:forEach items="${list }" var="article">  


	<!-- li -->
	<div class="board-article-li narrow row">


		<div class="col-md-1">
		<div class="board-views text-left">
					<p class="board-li-type">${article["CATEGORY"] }</p>
				</div>
		</div>		
		<div class="col-md-7">
			<div class="board-li-title">
				<a href="/board/boardread?article_no=${article['ARTICLE_NO'] }&program_name=${programName }">${article["SUBJECT"] }</a>
			</div>
	
		</div>
			

<div class="col-md-4">
	<div class="time-nickname text-center">
				<a> <span>${article["WRITE"] }</span></a><br>
				<a><b>${article["NICKNAME"] }</b></a>
			</div>
			<div class="board-article-li-num text-center">
				<div class="board-views">
					<div class="mini-counts">
						<span title="0 votes">${article["LIKE_COUNT"] }</span>
					</div>
					<div>추천</div>
				</div>
				<div class="board-views">
					<div class="mini-counts">
						<span title="0 answers">${article["COMMENTCOUNT"] }</span>
					</div>
					<div>댓글</div>
				</div>
				<div class="board-views">
					<div class="mini-counts">
						<span title="1 view">${article["HIT_COUNT"] }</span>
					</div>
					<div>조회수</div>
				</div>
			</div>
		</div>

	</div>


</c:forEach>
	</div>

	
	




