<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<div class="team-wrap" id="project">

		<div class="container">
			<div class="row">
				<div class="section-title">
					<h3>프로젝트</h3>
					<!-- 로그인시.. -->               
<c:if test="${cookie.loginId != null}" var="varname" scope="request">
               </c:if>
               
               <!-- 로그아웃시.. --> 
                <c:if test="${empty cookie.loginId}" var="varname" scope="request">
               
					<p class="subtext">가입하시고 초보개발자들과 함께 프로젝트에 참여해보세요</p>
				</div>
				
				    <div class="space30"></div>
                <div class="col-md-12 text-center"> <a class="btn-lite1" href="index.html#">가입하기</a></div>
     </c:if>
					
<div class="col-md-12">
	<div class="container">
		<div class="row">


			<ul id="project_filters" class="clearfix"
				style="margin-bottom: 0px; margin-top: 0px;">
				<li><span class="project_filte rs active"
					data-filter="sort1 sort2 sort3 sort4" id="allproject">All</span></li>
				<li><span class="project_filters" data-filter="sort1" id="cproject">C</span></li>
				<li><span class="project_filters" data-filter="sort2" id="cppproject">C++</span></li>
				<li><span class="project_filters" data-filter="sort3" id="csharpproject">C#</span></li>
				<li><span class="project_filters" data-filter="sort4" id="javaproject">JAVA</span></li>
				<li><span class="project_filters" data-filter="sort5" id="swiftproject">Swift</span></li>
				<li><span class="project_filters" data-filter="sort6" id="javascriptproject">JAVASCRIPT</span></li>
				<li><span class="project_filters" data-filter="sort7" id="pythonproject">PYTHON</span></li>
				<li><span class="project_filters" data-filter="sort8" id="phpproject">PHP</span></li>
				<li><span class="project_filters" data-filter="sort9" id="rubyproject">RUBY</span></li>
			</ul>

			<div class="text-right">
				<a class="flaticon-plus79 nanum-gothic " href="/project/project_write"
					style="font-size: 20px; margin-right: 15px;">새 프로젝트 만들기</a>
			</div>
			<div id="firstProgram">
			<c:forEach var="project" items="${list }">
			<div class="col-xs-12 col-sm-6 col-md-6 col-lg-3" style="padding-right: 0px;
padding-left: 0px;">
				
<c:if test='${project["PASS_FAIL"]== "0"}'>
				<figure class="effect-ming">
					<img src="/resources/images/img/17.jpg" alt="img17">
						
						
					<figcaption>
						<h2>
							${project["GROUP_SUBJECT"] }
						</h2>
						<p class="project-byline">by ${project["NICKNAME"] }   for ${project["PROGRAM_NAME"] } / ${project["GROUP_CATEGORY"] }</p>
						<%-- <p class="project-blurb">${project["GROUP_CONTENT"] }</p> --%>
						<p class="project-blurb">${project["STARTLINE"]} ~ ${project["DEADLINE"]}</p>
						<p class="project-location">
							<span><i class="fa fa-location-arrow"></i></span> 
							<span class="location-name">${project["GROUP_LOCATION"] }</span>
							<div class="grup-count">현재 ${project["COUNT"] } 명 / 총 ${project["GROUP_MAXCOUNT"] } 명</div>
					
							<form action="/project/project_detail" method="get">
								<input type="hidden" name="groupNo"
									value='${project["GROUP_NO"] }'> <input
									type="hidden" name="userNo" value='15'>
								<button class="btn white join-btn" type="submit">참가하기</button>

							</form>
						</c:if>
						
						<c:if test='${project["PASS_FAIL"]== "1"}'>
						<figure class="effect-ming" style="opacity:0.6">
					<img src="/resources/images/img/17.jpg" alt="img17">
						<figcaption>
						<h2>
							${project["GROUP_SUBJECT"] }
						</h2>
						<p class="project-byline">by ${project["NICKNAME"] }   for ${project["PROGRAM_NAME"] } / ${project["GROUP_CATEGORY"] }</p>
						<%-- <p class="project-blurb">${project["GROUP_CONTENT"] }</p> --%>
						<p class="project-blurb">${project["STARTLINE"]} ~ ${project["DEADLINE"]}</p>
						<p class="project-location">
							<span><i class="fa fa-location-arrow"></i></span> 
							<span class="location-name">${project["GROUP_LOCATION"] }</span>
							<div class="grup-count">현재 ${project["COUNT"] } 명 / 총 ${project["GROUP_MAXCOUNT"] } 명</div>
					
							
							<button class="btn white join-btn" type="submit" disabled >모집완료</button>
							
						</c:if>

					</figcaption>
				</figure>
				</div>
			
			</c:forEach>
			</div>
			<div id="pageresult"></div>
				</div>
			</div>
			
			<div class="space30"></div>
			<c:if test="${cookie.loginId != null}">
		<div class="text-center">
			<a class="readmore_btn " id="addproject">
				<i class="fa fa-angle-down"></i> 더 보기</a>
			<a class="readmore_btn " id="addcproject">
				<i class="fa fa-angle-down"></i> 더 보기</a>
			<a class="readmore_btn " id="addcppproject">
				<i class="fa fa-angle-down"></i> 더 보기</a>
			<a class="readmore_btn " id="addcsharpproject">
				<i class="fa fa-angle-down"></i> 더 보기</a>
			<a class="readmore_btn " id="addjavaproject">
				<i class="fa fa-angle-down"></i> 더 보기</a>
			<a class="readmore_btn " id="addswiftproject">
				<i class="fa fa-angle-down"></i> 더 보기</a>
			<a class="readmore_btn " id="addjavascriptproject">
				<i class="fa fa-angle-down"></i> 더 보기</a>
			<a class="readmore_btn " id="addpythonproject">
				<i class="fa fa-angle-down"></i> 더 보기</a>
			<a class="readmore_btn " id="addphpproject">
				<i class="fa fa-angle-down"></i> 더 보기</a>
			<a class="readmore_btn " id="addrubyproject">
				<i class="fa fa-angle-down"></i> 더 보기</a>
			
		</div>
		</c:if>
		
</div>



</div>

					</div>	

			</div>
		</div>
