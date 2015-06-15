<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>

	<jsp:include page="menu/module/head.jsp" />
	<link href="/resources/css/board.css" rel="stylesheet">

  </head>



<body>
		<jsp:include page="menu/nav.jsp" />
		<jsp:include page="member_edit/member_edit_head.jsp" />
<section class="member-edit">	
<div class=" container" style="padding-top:30px; padding-bottom:150px;">
<div class="row">
		
		<jsp:include page="member_edit/meber_edit_content.jsp" />
		
	</div>
        </div>
</section>	

<!-- 사이트맵 -->
	<jsp:include page="main/module/sitemap_wrap.jsp" />

<!-- 푸터 -->
	<jsp:include page="menu/footer.jsp" />
<!-- JAVA SCRIPT 모듈 -->

<jsp:include page="menu/module/nav_uneffect_js.jsp" />
<script type="text/javascript" src="/resources/js/board.js"></script>

</body>
</html>