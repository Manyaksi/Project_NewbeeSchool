<%@ page contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html>
<head>
<!-- head 모듈 -->
	<jsp:include page="menu/module/head.jsp" />
	<link rel="stylesheet" href="/resources/css/videostyle.css">
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
      
<div id="wrap">

<!-- 설치법 배우기-->
<div id="one">

	<jsp:include page="main/module/learn_menu_wrap.jsp" />

</div>
<!-- 커뮤니티 현황   -->      
<div id="two">
	<jsp:include page="main/module/community_intro.jsp" />

<!-- 커뮤니티 -->

	<jsp:include page="main/module/community_menu_wrap.jsp" />
	
	<!-- 순위  -->
	<jsp:include page="main/module/ranking.jsp" />
</div>

<!-- 프로젝트 소개 설명배너  -->      
<div id="three">
	<jsp:include page="main/module/project_intro_wrap.jsp" />
    

<!-- 프로젝트 -->
<jsp:include page="main/module/project_menu_wrap.jsp" />



<!-- 사이트맵 -->
	<jsp:include page="main/module/sitemap_wrap.jsp" />

<!-- 푸터 -->
	<jsp:include page="menu/footer.jsp" />
	</div>
	</div>

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

<script>
$(document).ready(function() {
	 
	  $("#owl-demo").owlCarousel({
	 
	      navigation : true, // Show next and prev buttons
	      slideSpeed : 300,
	      paginationSpeed : 400,
	      singleItem:true
	 
	      // "singleItem:true" is a shortcut for:
	      // items : 1, 
	      // itemsDesktop : false,
	      // itemsDesktopSmall : false,
	      // itemsTablet: false,
	      // itemsMobile : false
	 
	  });
});
</script>

</body>
</html>