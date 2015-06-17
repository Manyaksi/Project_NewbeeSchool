<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<!-- head 모듈 -->
	<jsp:include page="menu/module/head.jsp" />
	<link rel="stylesheet" href="/resources/css/videostyle.css">
	
<style>
    #owl-demo .item{
        display: block;
        width: 100%;
        height: auto;
    }
    </style>


</head>

  <body id="home">	
  
  <c:if test="${empty cookie.loginId}" var="varname" scope="request">	
  
  <!-- 네비게이션  -->
  <jsp:include page="menu/nav.jsp" />

  	<div class="body">
  	
	<div id="wrap">
<!-- 인트로 회원가입   -->
		<jsp:include page="main/module/intro_regist.jsp" />
      
<!-- 나에게 맞는 프로그래밍 언어 찾기  -->      
	<jsp:include page="main/module/matching_info_wrap.jsp" />
      	
<!-- 설치법 배우기-->
<jsp:include page="main/module/learn_menu_wrap.jsp" />

<!-- 커뮤니티 현황   -->      
<jsp:include page="main/module/community_intro.jsp" />

<!-- 커뮤니티 -->
<jsp:include page="main/module/community_menu_wrap.jsp" />

<!-- 순위  -->
<jsp:include page="main/module/ranking.jsp" />

<!-- 프로젝트 소개 설명배너  -->      
<jsp:include page="main/module/project_intro_wrap.jsp" />

<!-- 프로젝트 -->
<jsp:include page="main/module/project_menu_wrap.jsp" />

<!-- 사이트맵 -->
<jsp:include page="main/module/sitemap_wrap.jsp" />

<!-- 푸터 -->
<jsp:include page="menu/footer.jsp" />

	</div>
	</div>
</c:if>

	<!--  로그인시.. -->
	<c:if test="${cookie.loginId != null}" var="varname" scope="request">



		<!-- 네비게이션  -->
		<jsp:include page="menu/nav.jsp" />




		<div id="owl-demo" class="owl-carousel">

			<div class="item">
				<!-- 설치법 배우기-->
				<jsp:include page="main/module/learn_menu_wrap.jsp" />
			</div>

			<div class="item">
				<!-- 커뮤니티 현황   -->
				<jsp:include page="main/module/community_intro.jsp" />
				<!-- 커뮤니티 -->
				<jsp:include page="main/module/community_menu_wrap.jsp" />

			</div>
		</div>

		<div class="item">
			<!-- 프로젝트 소개 설명배너  -->
			<jsp:include page="main/module/project_intro_wrap.jsp" />

			<!-- 프로젝트 -->
			<jsp:include page="main/module/project_menu_wrap.jsp" />
		</div>
		</div>

		</div>

		<div class="end-content">
			<!-- 사이트맵 -->
			<jsp:include page="main/module/sitemap_wrap.jsp" />

			<!-- 푸터 -->
			<jsp:include page="menu/footer.jsp" />
		</div>

	</c:if>




	<!-- JAVA SCRIPT 모듈 -->

<jsp:include page="menu/module/nav_effect_js.jsp" />

<c:if test="${empty cookie.loginId}" var="varname" scope="request">	
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
</c:if>


<c:if test="${cookie.loginId != null}" var="varname" scope="request">


</c:if>



</body>
</html>