<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>

	<jsp:include page="menu/module/head.jsp" />
	<link href="/resources/css/board.css" rel="stylesheet">

  </head>



<body>
		<jsp:include page="menu/nav.jsp" />
		<jsp:include page="board/board_titlebar.jsp" />
		
<div class="container" style="margin-top:30px; margin-bottom:150px;">
<div class="row">
    <jsp:include page="board/board_sidebar.jsp" />
<jsp:include page="board/boardlist.jsp" />

	<div class="space50"></div>
	</div>
        </div>
      

<!-- 사이트맵 -->
	<jsp:include page="main/module/sitemap_wrap.jsp" />

<!-- 푸터 -->
	<jsp:include page="menu/footer.jsp" />
<!-- JAVA SCRIPT 모듈 -->

<jsp:include page="menu/module/nav_uneffect_js.jsp" />
<script type="text/javascript" src="/resources/js/board.js"></script>
<script type="text/javascript">

	 
	 var orderby = window.location.href.substring(window.location.href.lastIndexOf('=') + 1);
	 
	 $("#searchValue").keydown(function(evt){ 
	        if( (evt.keyCode) && (evt.keyCode==13) ) {
	            $("#searchForm").submit();
	        }
	    });
	 
	 
	 if(orderby=='hit_count'){
		 $('.hit-tab').addClass('board-header-tabs-active');
		 $('.total-num').html("");
	 }else if(orderby=='like_count'){
		 $('.like-tab').addClass('board-header-tabs-active');
		 $('.total-num').html("");
	 }else if(orderby=='commentcount'){
		 $('.comment-tab').addClass('board-header-tabs-active');
		 $('.total-num').html("");
	 }else if(orderby=='total'){
		 $('.total-tab').addClass('board-header-tabs-active');
		 $('.total-num').html("${size }");
	 }

                

</script>

</body>
</html>