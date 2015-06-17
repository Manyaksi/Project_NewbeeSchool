<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<div class="col-md-2 board-sidebar">
	<div class="sidebar-widget">
		<h5>카테고리</h5>
		
		<ul>
		
		

			<li><a href="/board/categorylist?category=&program_name=${programName }">전체 <i
					class="icon arrow_right"></i></a></li>
			<li><a href="/board/categorylist?category=일반&program_name=${programName }">일반<i
					class="icon arrow_right"></i></a></li>
			<li><a href="/board/categorylist?category=질문&program_name=${programName }">질문<i
					class="icon arrow_right"></i></a></li>
			<li><a href="/board/categorylist?category=정보&program_name=${programName }">정보<i
					class="icon arrow_right"></i></a></li>
			<li><a href="/board/categorylist?category=일반&program_name=${programName }">강좌<i
					class="icon arrow_right"></i></a></li>
			<li><a href="/board/categorylist?category=TIP&program_name=${programName }">TIP<i
					class="icon arrow_right"></i></a></li>
					
		</ul>
	</div>
	
	
	<div class="sidebar-widget">
	<a class="category-boxed btn font-black" href="write.html">글쓰기</a>
	
	</div>
	
	

</div>
