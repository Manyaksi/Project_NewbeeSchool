<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<!-- head 모듈 -->
	<jsp:include page="menu/module/head.jsp" />
	<link rel="stylesheet" href="/resources/css/videostyle.css">
	<link href="/resources/css/set2.css" rel="stylesheet" />
	
<style>
    #owl-demo .item{
        display: block;
        width: 100%;
        height: auto;
    }
    </style>
<script>
        jQuery(document).ready(function($) {
            $('.counter').counterUp({
                delay: 10,
                time: 1000
            });
        });
    </script>

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

		<div class="space80"></div>


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
<script>


$('.readmore_btn').hide();
$('#addproject').show();

var pageno = 2;

$('#allproject').click(function(){
	autoResizing();
	  $.ajax({
			type : "get",
			url : "/addProject.do",
			data : "pageNo=1",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#firstProgram').html(result);
	        	   pageno = 2;
	        	   $('.readmore_btn').hide();
	        	   $('#addproject').show();
	        	   $('#pageresult').html("");
	           }
			});
 });

$('#cproject').click(function(){
	autoResizing();
	  $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo=1&programName=C",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#firstProgram').html(result);
	        	   pageno = 2;
	        	   $('.readmore_btn').hide();
	        	   $('#addcproject').show();
	        	   $('#pageresult').html("");
	           }
			});
 });
$('#cppproject').click(function(){
	  $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo=1&programName=CPP",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#firstProgram').html(result);
	        	  	 pageno = 2;
	        	  	$('.readmore_btn').hide();
		        	   $('#addcppproject').show();
		        	   $('#pageresult').html("");
	           }
			});
 });
$('#csharpproject').click(function(){
	  $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "programName=CSharp&pageNo=1",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#firstProgram').html(result);
	        	  	 pageno = 2;
	        	  	$('.readmore_btn').hide();
		        	   $('#addcsharpproject').show();
		        	   $('#pageresult').html("");
	           }
			});
 });
$('#javaproject').click(function(){
	 $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo=1&programName=JAVA",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#firstProgram').html(result);
	        	  	 pageno = 2;
	        	  	$('.readmore_btn').hide();
		        	   $('#addjavaproject').show();
		        	   $('#pageresult').html("");
	           }
			});
 });
$('#swiftproject').click(function(){
	 $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo=1&programName=Swift",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#firstProgram').html(result);
	        	  	 pageno = 2;
	        	  	$('.readmore_btn').hide();
		        	   $('#addswiftproject').show();
		        	   $('#pageresult').html("");
	           }
			});
 });
$('#javascriptproject').click(function(){
	 $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo=1&programName=Javascript",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#firstProgram').html(result);
	        	  	 pageno = 2;
	        	  	$('.readmore_btn').hide();
		        	   $('#addjavascriptproject').show();
		        	   $('#pageresult').html("");
	           }
			});
 });
$('#pythonproject').click(function(){
	 $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo=1&programName=Phython",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#firstProgram').html(result);
	        	  	 pageno = 2;
	        	  	$('.readmore_btn').hide();
		        	   $('#addpythonproject').show();
		        	   $('#pageresult').html("");
	           }
			});
 });
$('#phpproject').click(function(){
	 $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo=1&programName=PHP",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#firstProgram').html(result);
	        	  	 pageno = 2;
	        	  	$('.readmore_btn').hide();
		        	   $('#addphpproject').show();
		        	   $('#pageresult').html("");
	           }
			});
 });
$('#rubyproject').click(function(){
	 $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo=1&programName=RUBY",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#firstProgram').html(result);
	        	  	 pageno = 2;
	        	  	$('.readmore_btn').hide();
		        	   $('#addrubyproject').show();
		        	   $('#pageresult').html("");
	           }
			});
 });
 
function projectClick(){
	$('.readmore_btn').hide();
	   $('#pageresult').html("");
}

$('#addproject').click(function(){
		autoResizing();
	  $.ajax({
			type : "get",
			url : "/addProject.do",
			data : "pageNo="+pageno,
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#pageresult').append(result);
	        	   pageno +=1;
	        	   
	           }
			});
 });

$('#addcproject').click(function(){
	autoResizing();
	  $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo="+pageno+"&programName=C",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#pageresult').append(result);
	        	   pageno +=1;
	        	   
	           }
			});
});
$('#addcppproject').click(function(){
	autoResizing();
	  $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo="+pageno+"&programName=CPP",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#pageresult').append(result);
	        	   pageno +=1;
	        	   
	           }
			});
});
$('#addcsharpproject').click(function(){
	autoResizing();
	  $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo="+pageno+"&programName=CSharp",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#pageresult').append(result);
	        	   pageno +=1;
	        	   
	           }
			});
});
$('#addjavaproject').click(function(){
	autoResizing();
	  $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo="+pageno+"&programName=JAVA",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#pageresult').append(result);
	        	   pageno +=1;
	        	   
	           }
			});
});
$('#addswiftproject').click(function(){
	autoResizing();
	  $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo="+pageno+"&programName=Swift",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#pageresult').append(result);
	        	   pageno +=1;
	        	   
	           }
			});
});
$('#addjavascriptproject').click(function(){
	autoResizing();
	  $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo="+pageno+"&programName=Javascript",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#pageresult').append(result);
	        	   pageno +=1;
	        	   
	           }
			});
});
$('#addpythonproject').click(function(){
	autoResizing();
	  $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo="+pageno+"&programName=Phython",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#pageresult').append(result);
	        	   pageno +=1;
	        	   
	           }
			});
});
$('#addphpproject').click(function(){
	autoResizing();
	  $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo="+pageno+"&programName=PHP",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#pageresult').append(result);
	        	   pageno +=1;
	        	   
	           }
			});
});
$('#addrubyproject').click(function(){
	autoResizing();
	  $.ajax({
			type : "get",
			url : "/showProject.do",
			data : "pageNo="+pageno+"&programName=RUBY",
	           dataType : "html",//text,xml, json
	           success : function(result) {
	        	  	$('#pageresult').append(result);
	        	   pageno +=1;
	        	   
	           }
			});
});


$('.navbar-default').addClass('nav-shadow');

function autoResizing(){
	$('.owl-wrapper-outer').removeAttr('style');
	  };

</script>

</c:if>



</body>
</html>