<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>

	<jsp:include page="menu/module/head.jsp" />
	<link href="/resources/css/modern.min.css" rel="stylesheet" type="text/css">

  </head>



<body>
		<jsp:include page="menu/nav.jsp" />
		
<div class="container" style="margin-top:30px; margin-bottom:80px;">
<div class="row">

<jsp:include page="minihome/minihome_contents.jsp" />

	<div class="space50"></div>
	</div>
        </div>
      

<!-- 사이트맵 -->
	<jsp:include page="main/module/sitemap_wrap.jsp" />

<!-- 푸터 -->
	<jsp:include page="menu/footer.jsp" />
<!-- JAVA SCRIPT 모듈 -->

<jsp:include page="menu/module/nav_uneffect_js.jsp" />

</body>
</html>