<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!-- Meta -->
	<meta charset="utf-8">
	<meta name="keywords" content="HTML5 Template" />
	<meta name="description" content="Slander - Responsive HTML5 Landing Page">
	<meta name="author" content="dkpixels.com">

	<title>개발유치원::: 개발툴설치,초보개발자 커뮤니티</title>

	<!-- Mobile Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<!-- Favicons -->
	<link rel="shortcut icon" href="/resources/images/favicon.ico.html">
	<link rel="apple-touch-icon" href="/resources/images/apple-touch-icon.png.html">
	<link rel="apple-touch-icon" sizes="72x72" href="/resources/images/apple-touch-icon-72x72.png.html">
	<link rel="apple-touch-icon" sizes="114x114" href="/resources/images/apple-touch-icon-114x114.png.html">
	<link rel="apple-touch-icon" sizes="144x144" href="/resources/images/apple-touch-icon-144x144.png.html">



	<!-- icon set -->
	 <link rel="stylesheet" type="text/css" href="/resources/css/entypo/flaticon.css">

	<!-- 구글웹폰트	-->
	<link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,400italic,600,600italic,700,800,700italic,800italic' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,700italic' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Raleway:400,900,800' rel='stylesheet' type='text/css'>

	<!-- CSS -->
	<link href="/resources/css/bootstrap.css" rel="stylesheet">
	<!-- 로그아웃 되어있을때 -->
<c:if test="${empty cookie.loginId}" var="varname" scope="request">
<link href="/resources/css/style.css" rel="stylesheet">
</c:if>
<!-- 로그인되어있을때 -->
<c:if test="${cookie.loginId != null}" var="varname" scope="request">
<link href="/resources/css/style_login.css" rel="stylesheet">				
</c:if>
	
	<link href="/resources/css/font-awesome/css/font-awesome.min.css" rel="stylesheet">

	<link href="/resources/css/flaticon.css" rel="stylesheet">
	<link href="/resources/js/owl-carousel/owl.carousel.css" rel="stylesheet">
	<link href="/resources/js/owl-carousel/owl.theme.css" rel="stylesheet">
	<link href="/resources/js/rs-plugin/css/settings.css" rel="stylesheet" />
	<link href="/resources/css/animate.css" rel="stylesheet" />
	<link href="/resources/css/flaticon.css" rel="stylesheet" />




