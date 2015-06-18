<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="portfolio-wrap" id="community">
		<div class="container">
			<div class="row">
				<div class="section-title">
					<h3>커뮤니티</h3>
						   <c:if test="${empty cookie.loginId}" var="varname" scope="request">
					<p>각종 언어별 개발툴 설치법을 익힐 수 있습니다
나에게 맞는 프로그래밍 언어로 시작하려면
</p>
				</div>
				<div class="space30"></div>
                <div class="col-md-12 text-center"> <a class="btn-main white" href="index.html#">가입하기</a></div>
                      </c:if>
                      
                      <c:if test="${cookie.loginId != null}" var="varname" scope="request">
						</c:if>
						
				<div class="col-md-12 no-padding community-main">
					<ul id="community_filters" class="clearfix">
						<li><span class="community_filter active" data-filter="sort1 sort2 sort3 sort4 sort5 sort6 sort7">All</span></li>
						<li><span class="community_filter" data-filter="sort1">PC</span></li>
						<li><span class="community_filter" data-filter="sort2">Linux</span></li>
						<li><span class="community_filter" data-filter="sort3">OSX</span></li>
						<li><span class="community_filter" data-filter="sort4">Server</span></li>
						<li><span class="community_filter" data-filter="sort5">Web</span></li>
						<li><span class="community_filter" data-filter="sort6">iOS</span></li>
						<li><span class="community_filter" data-filter="sort7">Android</span></li>
					</ul>
					<div id="comunitylist">
						<div class="community sort1" data-cat="sort1">
							<div class="community-wrapper">
								<img src="/resources/images/works/1.png" alt="" />
								<div class="overlay1">
									<a href="/board/boardlist?program_name=cpp">
										<div class="overlay-text"><i class="fa fa-picture-o"></i> <span>C++</span></div>
									</a>
								</div>
							</div>
						</div>
						<div class="community sort1 sort2 sort3 sort4 sort5 sort6 sort7" data-cat="sort1 sort2 sort3 sort4 sort5 sort6 sort7">
							<div class="community-wrapper">
								<img src="/resources/images/works/2.png" alt="" />
								<div class="overlay1">
									<a href="/board/boardlist?program_name=Python">
										<div class="overlay-text"><i class="fa fa-play"></i> <span>JAVA</span></div>
									</a>
								</div>
							</div>
						</div>
						<div class="community sort3 sort6" data-cat="sort3 sort6">
							<div class="community-wrapper">
								<img src="/resources/images/works/3.png" alt="" />
								<div class="overlay1">
									<a href="/board/boardlist?program_name=CPP">
										<div class="overlay-text"><i class="fa fa-camera"></i> <span>Swift</span></div>
									</a>
								</div>
							</div>
						</div>
						<div class="community sort5" data-cat="sort5">
							<div class="community-wrapper">
								<img src="/resources/images/works/4.png" alt="" />
								<div class="overlay1">
									<a href="/board/boardlist?program_name=Swift">
										<div class="overlay-text"><i class="fa fa-picture-o"></i> <span>JS</span></div>
									</a>
								</div>
							</div>
						</div>
						<div class="community sort1 sort2 sort3 sort4 sort5" data-cat="sort1 sort2 sort3 sort4 sort5">
							<div class="community-wrapper">
								<img src="/resources/images/works/6.png" alt="" />
								<div class="overlay1">
									<a href="/board/boardlist?program_name=Csharp">
										<div class="overlay-text"><i class="fa fa-play"></i> <span>Python</span></div>
									</a>
								</div>
							</div>
						</div>
						<div class="community sort5" data-cat="sort5">
							<div class="community-wrapper">
								<img src="/resources/images/works/5.png" alt="" />
								<div class="overlay1">
									<a href="/board/boardlist?program_name=PHP">
										<div class="overlay-text"><i class="fa fa-camera"></i> <span>Ruby</span></div>
									</a>
								</div>
							</div>
						</div>
						<div class="community sort5" data-cat="sort5">
							<div class="community-wrapper">
								<img src="/resources/images/works/7.png" alt="" />
								<div class="overlay1">
									<a href="/board/boardlist?program_name=Ruby">
										<div class="overlay-text"><i class="fa fa-picture-o"></i> <span>PHP</span></div>
									</a>
								</div>
							</div>
						</div>
						<div class="community sort1" data-cat="sort1">
							<div class="community-wrapper">
								<img src="/resources/images/works/8.png" alt="" />
								<div class="overlay1">
									<a href="/board/boardlist?program_name=JavaScript">
										<div class="overlay-text"><i class="fa fa-play"></i> <span>C#</span></div>
									</a>
								</div>
							</div>
						</div>
						<div class="community sort1 sort2" data-cat="sort1 sort2">
							<div class="community-wrapper">
								<img src="/resources/images/works/9.png" alt="" />
								<div class="overlay1">
									<a href="/board/boardlist?program_name=C">
										<div class="overlay-text"><i class="fa fa-camera"></i> <span>C</span></div>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			
		</div>
		<!-- /.container -->
	</div>
	</div>
