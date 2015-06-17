<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<div class="program-intro-wrap">
		<div class="container">
			<div class="row">
				<div class="col-md-12 no-padding program-intro-content">
					<div class="col-md-12 text-center">
                        <h1 class="tip-title">프로젝트를 시작해보세요</h1>
						<p>프로그래밍 스터디, 관심있는 프로젝트를 찾아보세요.</p>
						<p> 총 12,350개의 프로젝트가 진행중입니다.</p>
						<div class="space40"></div>
						
						<!-- 로그아웃시.. -->
<c:if test="${empty cookie.loginId}" var="varname" scope="request">	
						<a class="btn-main white" href="index.html#">찾아보기</a>
						</c:if>
					</div>
				</div>
			
			
				
					</div>
				</div>
			</div>


