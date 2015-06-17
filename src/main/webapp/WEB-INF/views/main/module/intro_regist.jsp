<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<c:if test="${cookie.loginId != null}" var="varname" scope="request">
						
						</c:if>
						
							<c:if test="${empty cookie.loginId}" var="varname" scope="request">
				
<video autoplay="true" loop="loop" muted="" id="teaser-video" class="teaser-video">
<source src="/resources/video/bgvideo.mp4" type="video/mp4">
<source src="/resources/video/bgvideo.webm" type="video/webm">
</video>
<div class="intro-regist">


		<div class="row">




			<div class="col-md-12">

				<!-- Slider -->
				<div class="container">
					<div class="row">
			
			<!-- 로그인박스 -->
				
			
						
				
                        <!--환영합니다 -->
                        <div class="col-md-6 text-center  col-md-offset-1 mobile welcome">
                        <h1 class="welcome-title jeju-gothic">환영합니다</h1>
                            <h2 class="welcome-message nanum-gothic">당신에게 딱 맞는 프로그래밍 언어를 찾아보고, 개발환경을 개발 툴 메뉴얼을 통해 쉽게 설치 해보세요 . 그리고 </br>현재<b> 1,230</b> 명이 활동중인 커뮤티니에서 함께 활동 해 보세요!
</h2>
                        
                        </div>
                        <!--메인 회원가입패널 -->
                        <div class="col-md-4 col-md-offset-1 text-center regist">
                      

                        <form action="/join" method="post">

                            <div class="row input_wrapper">
                                <input class="simple_input full" type="text" name="name" id="name" autocomplete="off" placeholder="닉네임" title="Please enter your name" value="" maxlength="32" data-validators="required minLength:1 maxLength:32">

                                                            </div>

                            <div class="row input_wrapper">
                                <input class="simple_input full" type="email" name="email" id="signup_email" autocomplete="off" placeholder="이메일" title="Please enter a valid email address" value="" maxlength="128" data-validators="required maxLength:128 validate-email">

                                                            </div>

                            <div class="row input_wrapper">
                                <input class="simple_input full" type="password" name="password" id="signup_password" autocomplete="off" placeholder="비밀번호( 6자리 이상)" title="Please enter your password" value="" data-validators="required">

                                                            </div>
                           
                            <div class="row">
                                <a href="/registeration" type="submit" id="join_btn" class="btn btn_blue" value="가입하기">가입하기</a>
                               
                            </div>
                           
                        <input name="token" type="hidden" value="22cc9df6d36167aec883d478248fae96.0"></form>

                        <!--페이스북 가입하기 버튼 -->
                        <form class="row text-center" action="/join" method="post" id="facebook_join" data-xsrf-protection="enabled" data-ds-protection="enabled">
                            <input type="hidden" name="service" value="facebook">
                            <button type="submit" class="fb_regist " data-ga-event-click="button|join|hp_join_fb" data-click-tracked="tracked"><i class="fa fa-facebook-square"></i> <b>Facebook</b> 계정으로 가입하기</button>
                        <input name="token" type="hidden" value="22cc9df6d36167aec883d478248fae96.0"></form>
                        
                    
                      <small style="color:white;">개발유치원에 가입하시면, <a style="color:#428bca;" href="/terms">이용약관</a> 과 <a style="color:#428bca;" href="/privacy">개인정보보호정책</a> 에 동의하시게 됩니다. </small>
        
                        </div>
                        </div>
						
					</div>
				</div>
				<!-- Slider -->

			</div>

		</div>
	</c:if>
	
