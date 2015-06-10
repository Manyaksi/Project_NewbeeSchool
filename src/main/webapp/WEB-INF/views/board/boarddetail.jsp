<%@ page contentType="text/html; charset=utf-8" %>
	<table class="table col-md-12">
        
     
       
        <tr class="col-md-12">
			<td class="col-md-2">
			<b>제목</b>
			</td>
			<td colspan="3" class="col-md-10">
			${article.subject }
			</td>
		</tr>
		
		  <tr class="col-md-12">
			<td class="col-md-2">
			<b>분류</b>
			</td>
			<td colspan="3" class="col-md-10">
			${article.category }
			</tr>
		
		  <tr class="col-md-12">
			<td class="col-md-2">
			<b>글쓴이</b>
			</td>
			<td  colspan="3" class="col-md-10">
			펩시(포인트:1,201)
			</td>
		</tr>
		
		
		  <tr class="col-md-12">
			<td class="col-md-2">
			<b>등록일</b>
			</td>
			<td colspan="3" class="col-md-10">
			${article.write_date }
			</td>
		</tr>
        
		  <tr >
			<td class="col-md-2">
			<b>조회수</b>
			</td>
			<td  class="col-md-4">
			${article.hit_count }
			</td>
			  <td class="col-md-2">
			<b>추천수</b>
			</td>
			<td class="col-md-4">
			<span id="message">${article.like_count }</span> 
			</td>
		</tr>
			</table>
		
		<div class="row">
			<div class="col-md-12 text-center read-content">
				${article.content }
				
			</div>
		</div>


		

		<div clas="row">
			<div class="paging-left-comp">
					<a class="category-boxed btn font-black" id="like">추천하기</a>
						</div>
				
					
					<div class="paging-right-comp">
					<a class="category-boxed btn font-black" href="/board/boardlist?program_name=${article.program_name }">목록보기</a>
						<a class="category-boxed btn font-black" href="write.html">글쓰기</a>
						</div>
</div>
        
		<div class="space80"></div>			
<table class="table ">
	<tr>
<td class="col-md-3 text-center">
	<img src="/resources/images/author1.png"></img>
</td>
	<td class="col-md-7">
		<p><b>방그리</b></p>
		<span>너 김원영이지?<br>내일보자</span>
	</td>		
	<td class="col-md-2 text-right bottom-border">
		<p>2015-06-01</p>
		<p>11:59:20</p>
		<p>[댓글쓰기]</p>
	</td>
</tr>
<tr>
<td class="col-md-3 text-center">
	<img src="/resources/images/author1.png"></img>
</td>
	<td class="col-md-7">
		<p><b>펩시</b></p>
		<span>헐 부장님...</span>
	</td>		
	<td class="col-md-2  text-right">
		<p>2015-06-01</p>
		<p>11:59:20</p>
		<p>[댓글쓰기]</p>
	</td>
</tr>
</table>




	
	<div class="col-md-12">
	<textarea class="form-control" rows="6">
	(글쓰는공간)
	
	</textarea>
</div>
<div class="space10"></div>
	<div class="col-md-1 col-md-offset-11">
		
		<button type="submit" class="btn btn-default">작성</button>
	</div>
	