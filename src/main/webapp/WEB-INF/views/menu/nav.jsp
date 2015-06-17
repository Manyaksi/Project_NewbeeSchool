<%@page import="java.net.URLDecoder"%>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%Cookie[] cookies = request.getCookies();%>

		<nav class="navbar navbar-default navbar-fixed-top top-nav fixed-height" role="navigation">
			<div class="container login_nav">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/">개발유치원</a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-left navbar-ex1-collapse">
					<ul class="nav navbar-nav nanum-gothic-coding">
					<!-- 로그아웃시.. -->

					<c:if test="${empty cookie.loginId}" var="varname" scope="request">
					<li><a href="/#learn">배우기</a></li>
					<li><a href="/#community">커뮤니티</a></li>
					<li><a href="/#project">프로젝트</a></li>
					</c:if>
					
					<!-- 로그인시.. -->

  					<c:if test="${cookie.loginId != null}" var="varname" scope="request">
					<li><a id="learn-tab">배우기</a></li>
					<li><a id="community-tab">커뮤니티</a></li>
					<li><a id="project-tab">프로젝트</a></li>
				    </c:if>
						
					</ul>
				</div>
				<div class="collapse navbar-collapse navbar-right navbar-ex1-collapse">
				<c:if test="${empty cookie.loginId}" var="varname" scope="request">
					<ul class="nav navbar-nav nanum-gothic-coding">
						<li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">로그인 <span class="caret"></span></a>
			<ul id="login-dp" class="dropdown-menu">
				<li>
					 <div class="row">
							<div class="col-md-12 jeju-gothic">
				
								<div class="social-buttons">
									<button type="submit" class="btn btn-fb btn-block"><i class="fa fa-facebook space-right10"></i>Facebook으로 로그인</button>
								</div>
                                
								 <form class="form" role="form" method="post" action="/users/login" name="loginForm" accept-charset="UTF-8" id="login-nav">
										<div class="form-group">
											 <label class="sr-only" for="exampleInputEmail2">이메일 주소</label>
											 <input type="email" class="form-control" name="id" id="exampleInputEmail2" placeholder="이메일 주소" required>
										</div>
										<div class="form-group">
											 <label class="sr-only" for="exampleInputPassword2">비밀번호</label>
											 <input type="password" class="form-control" id="exampleInputPassword2" name="password" placeholder="비밀번호" required>
                                             <div class="help-block text-right"><a href="">비밀번호를 잊어버리셨나요? </a></div>
										</div>
										<div class="form-group">
											 <button type="submit" class="btn btn-primary btn-block">로그인</button>
										</div>
										<div class="checkbox">
											 <label>
											 <input type="checkbox"> 자동로그인
											 </label>
										</div>
								 </form>
							</div>
							<div class="bottom text-center">
								초보개발자시나요? <a href="/registeration">바로가입</a>
							</div>
					 </div>
				</li>
			</ul>
        </li>
                        
                        
                        
                        
                        
                        
						<li><a href="/registeration">회원가입</a></li>
						<li><a class="fa fa-bars" href="index.html#"></a></li>
					</ul>
					</c:if>
					
					<c:if test="${cookie.loginId != null}" var="varname" scope="request">
					
									<ul class="nav navbar-nav nanum-gothic-coding">
									<li><img class="img-circle avatar" src="/resources/images/blog/1.jpg" width="45" height="45" alt=""></li>
						<li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><p id="login"><span id="navmessage"><%=URLDecoder.decode(cookies[2].getValue(),"utf-8") %></span> <span class="caret"></span></p> </a>
			<ul id="login-dp2" class="dropdown-menu login-dp2-top-right">
				
				<li><a href="/minihome/minihome?userNo=${cookie.loginId.value}">미니홈</a></li>
				<li><a href="/user/member_edit?userNo=${cookie.loginId.value}">회원정보수정</a></li>
				
				<li>
					<a href="/users/logout">로그아웃</a>
				</li>
			</ul>
        </li>
        </ul>
					</c:if>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container -->
		</nav>
