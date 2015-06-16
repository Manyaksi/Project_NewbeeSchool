<%@ page contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html>
<head>
<!-- head 모듈 -->
	<jsp:include page="menu/module/head.jsp" />
	<link rel="stylesheet" href="/resources/css/videostyle.css">
	<style>
html, .body {
	width:100%;
	padding:0;
	margin:0;
	overflow:hidden;
}
section {
	float:left;
	display:block;
	height:100%;
	padding:0;
	margin:0;
}

	</style>
	
</head>



  <body id="home">
  <jsp:include page="menu/nav.jsp" />
  	<div class="body">

<!-- 네비게이션  -->
<%-- 상단바 시작 --%>
		
		<%-- 상단바 끝 --%>
<!-- 인트로 회원가입   -->
		<jsp:include page="main/module/intro_regist.jsp" />
      
      
<!-- 나에게 맞는 프로그래밍 언어 찾기  -->      
	<jsp:include page="main/module/matching_info_wrap.jsp" />
      


<!-- 설치법 배우기-->
<section data-role="section" id="section-section1">

	<jsp:include page="main/module/learn_menu_wrap.jsp" />

</section>
<!-- 커뮤니티 현황   -->      
<section data-role="section" id="section-section2">
	<jsp:include page="main/module/community_intro.jsp" />

<!-- 커뮤니티 -->

	<jsp:include page="main/module/community_menu_wrap.jsp" />
	
	<!-- 순위  -->
	<jsp:include page="main/module/ranking.jsp" />
</section>

<!-- 프로젝트 소개 설명배너  -->      
<section data-role="section" id="section-section3">
	<jsp:include page="main/module/project_intro_wrap.jsp" />
    

<!-- 프로젝트 -->
<jsp:include page="main/module/project_menu_wrap.jsp" />



<!-- 사이트맵 -->
	<jsp:include page="main/module/sitemap_wrap.jsp" />

<!-- 푸터 -->
	<jsp:include page="menu/footer.jsp" />
	</section>

</div>



<!-- JAVA SCRIPT 모듈 -->

<jsp:include page="menu/module/nav_effect_js.jsp" />
<script src="/resources/js/videoscript.js"></script>
<script>
  $(document).ready(function() {

     HeaderVideo.init({
        container: $('.header-video'),
        header: $('.header-video--media'),
        videoTrigger: $("#video-trigger"),
        autoPlayVideo: false
      });    

  });
</script>

</body>
</html>