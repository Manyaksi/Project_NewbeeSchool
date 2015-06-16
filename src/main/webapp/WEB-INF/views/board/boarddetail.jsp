<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>

<div class="col-md-10 col-md-offset-2">
	<table class="table">
        
     
       
        <tr class="col-md-12">
			<td class="col-md-2">
			<b>제목</b>
			</td>
			<td colspan="3" class="col-md-10">
			${article.SUBJECT }
			</td>
		</tr>
		
		  <tr class="col-md-12">
			<td class="col-md-2">
			<b>분류</b>
			</td>
			<td colspan="3" class="col-md-10">
			${article.CATEGORY }
			</tr>
		
		  <tr class="col-md-12">
			<td class="col-md-2">
			<b>글쓴이</b>
			</td>
			<td  colspan="3" class="col-md-10">
			${article.NICKNAME }(포인트:${article["POINT"] })
			</td>
		</tr>
		
		
		  <tr class="col-md-12">
			<td class="col-md-2">
			<b>등록일</b>
			</td>
			<td colspan="3" class="col-md-10">
			${article["WRITE_DATE"] }
			</td>
		</tr>
        
		  <tr >
			<td class="col-md-2">
			<b>조회수</b>
			</td>
			<td  class="col-md-4">
			${article["HIT_COUNT"] }
			</td>
			  <td class="col-md-2">
			<b>추천수</b>
			</td>
			<td class="col-md-4">
			<span id="message">${article["LIKE_COUNT"] }</span> 
			</td>
		</tr>
			</table>
		
		<div class="row">
			<div class="col-md-12 read-content">
			<div class="click2edit">
			 ${article["CONTENT"] }
			
			</div>
				
			</div>
		</div>


		

		<div class="col-md-12">
	
			<div class="paging-left-comp">
					<a class="category-boxed btn font-black" id="like">추천하기</a>
						</div>
				
					
					
					<div class="paging-right-comp">
					<a class="category-boxed btn font-black" href="/board/boardlist?program_name=${article['PROGRAM_NAME'] }">목록보기</a>
					<a class="category-boxed btn font-black" href="/board/modifyarticle?article_no=${article['ARTICLE_NO'] }&program_name=${article['PROGRAM_NAME'] }">수정하기</a>
					<button id="edit" class="btn btn-primary" onclick="edit()" type="button">Edit</button>
					<form class="form-horizontal" action="/board/modifyarticle" method="post" id="modifyarticle">
					<button id="save" class="btn btn-primary" onclick="save()" type="submit">Save</button>
					
					<input type="hidden" name="article_no" value="${article['ARTICLE_NO'] }">
					<input type="hidden" name="subject" value="${article['SUBJECT'] }">
					<input type="hidden" name="program_name" value="${article['PROGRAM_NAME'] }">
					
					<input type="hidden" name="content" value="" class="content">
					
					</form>
					<a class="category-boxed btn font-black" href="/board/deletearticle?article_no=${article['ARTICLE_NO'] }&program_name=${article['PROGRAM_NAME'] }">삭제하기</a>
						<a class="category-boxed btn font-black" href="write.html">글쓰기</a>
						</div>
						
						
</div>
        
		<div class="space80"></div>			
<table class="table ">


 <c:forEach items="${commentList }" var="comment">  
	<tr>
<td class="col-md-3 text-center">
	<img src="/resources/images/author1.png"></img>
</td>


	<td class="col-md-7">
		<p><b> ${comment["NICKNAME"] } </b></p>
		<span>${comment["COMMENT_CONTENT"] }</span>
	</td>		
	<td class="col-md-2 text-right bottom-border">
		<p>${comment["WRITE"] }</p>
		<p>[댓글쓰기]</p>
	</td>
</tr>

</c:forEach>

</table>




	<form action="/board/writecomment" method="post">
	<div class="col-md-12">
	<textarea class="form-control" rows="6" name="comment_content">
	
	</textarea>
</div>
<div class="space10"></div>
	<div class="col-md-1 col-md-offset-11">
	<input type="hidden" name="program_name" value="${article['PROGRAM_NAME'] }">
	<input type="hidden" name="article_no" value="${article['ARTICLE_NO'] }">
	<input type="hidden" name="user_no" value="${article['USER_NO'] }">
		
		<button type="submit" class="btn btn-default">작성</button>
	</div>
	</form>
	
