<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
