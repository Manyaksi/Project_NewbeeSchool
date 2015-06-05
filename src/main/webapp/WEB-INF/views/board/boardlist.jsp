<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
        <div class="col-md-12">
       <h2><span class="logo">JAVA</span> 커뮤니티</h2> 
        <p>java커뮤니티 소개글......</p>
        </div>
        
        <div class="space50"></div>
       
        <div class="col-md-12 margin-bottom-10">
			<a class="category-boxed" href="">전체</a>
			<a class="category-boxed" href="">일반</a>
			<a class="category-boxed" href="">질문</a>
			<a class="category-boxed" href="">정보/강좌</a>
			<a class="category-boxed" href="">TIP</a>
		</div>
        
        
        <div class="col-md-12">
            
      <table class="table table-hover table-condensed community-board">
		<tr>
			<th class="col-md-1 text-center">
			번호
			</th>  
			<th class="col-md-1 text-center">
			분류
			</th>
			<th class="col-md-1 text-center">
			글쓴이
			</th> 
			<td class="col-md-6 text-center">
			제목
			</th> 
			<th class="col-md-1 text-center">
			등록일
			</th>
			<th class="col-md-1 text-center">
			추천
			</th>
			<th class="col-md-1 text-center">
			조회
			</th>
		</tr>	
		
		  <c:forEach items="${list }" var="article">  
		  <tr>
		  <td align="center">${article["ARTICLE_NO"] }</td>
		    <td align="center">${article["CATEGORY"] }</td>
			<td align="left">${article["NICKNAME"] }</td>
			<td align="center"><a href="/boardread">${article["SUBJECT"] }</a></td>
			<td align="center">${article["WRITE"] }</td>
			<td align="center">${article["LIKE_COUNT"] }</td>
			<td align="center">${article["HIT_COUNT"] }</td>
		  </tr>
		  </c:forEach>
		  
		 
		
		
		  
		  
		</table>
			
			<div class="col-md-12">
	
				
				
				<div class="paging">
					
					<div class="paging-left-comp">
					<a class="category-boxedbtn font-black" href="write.html">목록</a>
						</div>
				
  <ul class="pagination no-margin font-black">
    <li class="font-black">
      <a class="font-black" href="#" aria-label="Previous">
        <span aria-hidden="true">이전페이지</span>
      </a>
    </li>
    <li><a class="font-black" href="#">1</a></li>
    <li><a class="font-black"  href="#">2</a></li>
    <li><a class="font-black" href="#">3</a></li>
    <li><a class="font-black" href="#">4</a></li>
    <li><a class="font-black" href="#">5</a></li>
    <li>
      <a class="font-black" href="#" aria-label="Next">
        <span aria-hidden="true">다음페이지</span>
      </a>
    </li>
  </ul>
					
					<div class="paging-right-comp">
					<a class="category-boxed btn font-black" href="write.html">글쓰기</a>
						</div>
					</div>
				
				
				</div>
			
			</div>
			
			
            
       