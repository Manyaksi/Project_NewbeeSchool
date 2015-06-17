<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- 로그아웃시.. -->
<c:if test="${empty cookie.loginId}" var="varname" scope="request">
					   
<div class="learn-menu-wrap" id="learn">

		<div class="container">
			<div class="row">
				<div class="section-title animated bounceIn">
					<h3>설치법 배우기</h3>
                    <p>각종 언어별 개발툴 설치법을 익힐 수 있습니다.</p>
                    
                 
					
<p>나에게 맞는 프로그래밍 언어로 시작하려면  
</p>
                    
                    
				</div>
                
                <div class="space30"></div>
                <div class="col-md-12 text-center"> <a class="btn-main white" href="index.html#">가입하기</a></div>
</c:if>

<!-- 로그인시.. -->               
<c:if test="${cookie.loginId != null}" var="varname" scope="request">
               
               <div class="learn-menu-wrap" id="learn">
		<div class="container">
			<div class="row">
				<div class="section-title">
					<h3>설치법 배우기</h3>
                    <p>각종 언어별 개발툴 설치법을 익힐 수 있습니다.</p>
</c:if>
						
						
				<div class="col-md-12 no-padding portfolio-main">
					<ul id="filters" class="clearfix">
						<li><span class="filter active" data-filter="sort1 sort2 sort3 sort4">All</span></li>
						<li><span class="filter" data-filter="sort1">Web</span></li>
						<li><span class="filter" data-filter="sort2">Mobile</span></li>
						<li><span class="filter" data-filter="sort3">Design</span></li>
						<li><span class="filter" data-filter="sort4">Photography</span></li>
						<li><span class="filter" data-filter="sort5">Type</span></li>
					</ul>
					<div id="portfoliolist">
						<div class="portfolio sort1" data-cat="sort1">
							<div class="portfolio-wrapper">
								<img src="/resources/images/works/1.jpg" alt="" />
								<div class="overlay1">
									<a href="/tutorial">
										<div class="overlay-text"><i class="fa fa-coffee"></i><span>JAVA</span></div>
									</a>
								</div>
							</div>
						</div>
						<div class="portfolio sort2" data-cat="sort2">
							<div class="portfolio-wrapper">
								<img src="/resources/images/works/2.jpg" alt="" />
								<div class="overlay1">
									<a href="portfolio_single_video.html">
										<div class="overlay-text"><i class="fa fa-play"></i> <span>View Project</span></div>
									</a>
								</div>
							</div>
						</div>
						<div class="portfolio sort3" data-cat="sort3">
							<div class="portfolio-wrapper">
								<img src="/resources/images/works/3.jpg" alt="" />
								<div class="overlay1">
									<a href="portfolio_single_slider.html">
										<div class="overlay-text"><i class="fa fa-camera"></i> <span>View Project</span></div>
									</a>
								</div>
							</div>
						</div>
						<div class="portfolio sort4" data-cat="sort4">
							<div class="portfolio-wrapper">
								<img src="/resources/images/works/4.jpg" alt="" />
								<div class="overlay1">
									<a href="portfolio_single_img.html">
										<div class="overlay-text"><i class="fa fa-picture-o"></i> <span>View Project</span></div>
									</a>
								</div>
							</div>
						</div>
						<div class="portfolio sort1" data-cat="sort1">
							<div class="portfolio-wrapper">
								<img src="/resources/images/works/6.jpg" alt="" />
								<div class="overlay1">
									<a href="portfolio_single_video.html">
										<div class="overlay-text"><i class="fa fa-play"></i> <span>View Project</span></div>
									</a>
								</div>
							</div>
						</div>
						<div class="portfolio sort2" data-cat="sort2">
							<div class="portfolio-wrapper">
								<img src="/resources/images/works/5.jpg" alt="" />
								<div class="overlay1">
									<a href="portfolio_single_slider.html">
										<div class="overlay-text"><i class="fa fa-camera"></i> <span>View Project</span></div>
									</a>
								</div>
							</div>
						</div>
						<div class="portfolio sort3" data-cat="sort3">
							<div class="portfolio-wrapper">
								<img src="/resources/images/works/7.jpg" alt="" />
								<div class="overlay1">
									<a href="portfolio_single_img.html">
										<div class="overlay-text"><i class="fa fa-picture-o"></i> <span>View Project</span></div>
									</a>
								</div>
							</div>
						</div>
						<div class="portfolio sort4" data-cat="sort4">
							<div class="portfolio-wrapper">
								<img src="/resources/images/works/8.jpg" alt="" />
								<div class="overlay1">
									<a href="portfolio_single_video.html">
										<div class="overlay-text"><i class="fa fa-play"></i> <span>View Project</span></div>
									</a>
								</div>
							</div>
						</div>
						<div class="portfolio sort4" data-cat="sort4">
							<div class="portfolio-wrapper">
								<img src="/resources/images/works/9.jpg" alt="" />
								<div class="overlay1">
									<a href="portfolio_single_video.html">
										<div class="overlay-text"><i class="fa fa-camera"></i> <span>View Project</span></div>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /.container -->
	</div>
	</div>
