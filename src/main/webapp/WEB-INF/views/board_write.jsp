<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

	<jsp:include page="menu/module/head.jsp" />
	<link href="/resources/css/board.css" rel="stylesheet">
	<link href="/resources/css/summernote.css" rel="stylesheet">
	

  </head>



<body>
		<jsp:include page="menu/nav.jsp" />
		<jsp:include page="board/board_titlebar.jsp" />
		
<div class="container" style="margin-top:30px; margin-bottom:150px;">
<div class="row">

		<jsp:include page="board/board_write_contents.jsp" />


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
<script src="/resources/js/summernote.min.js"></script>

<script>

$(document).ready(function() {

	$(".placeholder-white form-control pull-right").keydown(function(evt){ 
	    if( (evt.keyCode) && (evt.keyCode==13) ) {
	         $(".navbar-form search-btn").submit();
	     }
	 });	
	
	  $('#summernote').summernote();
	  
	  $("#writearticle").submit(function(){
		  
	  var content = $('.note-editable').html();
	  
      $(".content").attr("value",content);
		  
	  	return true;
	  
	  });
	  
	});
	
	
$('#summernote').summernote({
	  height: 300,                 // set editor height

	  minHeight: 300,             // set minimum height of editor
	  maxHeight: 500,             // set maximum height of editor

	  focus: true,                 // set focus to editable area after initializing summernote
	});	
	
	var contents = $('.note-editable').html();
	


</script>

</body>
</html>