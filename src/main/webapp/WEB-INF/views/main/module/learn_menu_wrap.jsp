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
						
					</ul>
					<div id="portfoliolist">
						<div class="portfolio sort1" data-cat="sort1">
							<div class="portfolio-wrapper">
								<img src="/resources/images/works/1.png" alt="" />
								<div class="overlay1">
									<a href="/tutorial/tutorial?program_name=cpp&program_os=window">
										<div class="overlay-text"><i class="fa fa-book"></i><span>C++</span></div>
									</a>
								</div>
							</div>
						</div>
						<div class="portfolio sort1 sort2 sort3 sort4 sort5 sort6 sort7" data-cat="sort1 sort2 sort3 sort4 sort5 sort6 sort7">
							<div class="portfolio-wrapper">
								<img src="/resources/images/works/2.png" alt="" />
								<div class="overlay1">
									<a href="/tutorial/tutorial?program_name=java&program_os=window">
										<div class="overlay-text"><i class="fa fa-book"></i> <span>JAVA</span></div>
									</a>
								</div>
							</div>
						</div>
						<div class="portfolio sort3 sort6" data-cat="sort3 sort6">
							<div class="portfolio-wrapper">
								<img src="/resources/images/works/3.png" alt="" />
								<div class="overlay1">
									<a href="/tutorial/tutorial?program_name=swift&program_os=window">
										<div class="overlay-text"><i class="fa fa-book"></i> <span>Swift</span></div>
									</a>
								</div>
							</div>
						</div>
						<div class="portfolio sort5" data-cat="sort5">
							<div class="portfolio-wrapper">
								<img src="/resources/images/works/4.png" alt="" />
								<div class="overlay1">
									<a href="/tutorial/tutorial?program_name=javascript&program_os=window">
										<div class="overlay-text"><i class="fa fa-book"></i> <span>JAVA Script</span></div>
									</a>
								</div>
							</div>
						</div>
						<div class="portfolio sort1 sort2 sort3 sort4 sort5" data-cat="sort1 sort2 sort3 sort4 sort5">
							<div class="portfolio-wrapper">
								<img src="/resources/images/works/6.png" alt="" />
								<div class="overlay1">
									<a href="/tutorial/tutorial?program_name=python&program_os=window">
										<div class="overlay-text"><i class="fa fa-book"></i> <span>Python</span></div>
									</a>
								</div>
							</div>
						</div>
						<div class="portfolio sort5" data-cat="sort5">
							<div class="portfolio-wrapper">
								<img src="/resources/images/works/5.png" alt="" />
								<div class="overlay1">
									<a href="/tutorial/tutorial?program_name=ruby&program_os=window">
										<div class="overlay-text"><i class="fa fa-book"></i> <span>RUBY</span></div>
									</a>
								</div>
							</div>
						</div>
						<div class="portfolio sort5" data-cat="sort5">
							<div class="portfolio-wrapper">
								<img src="/resources/images/works/7.png" alt="" />
								<div class="overlay1">
									<a href="/tutorial/tutorial?program_name=php&program_os=window">
										<div class="overlay-text"><i class="fa fa-book"></i> <span>PHP</span></div>
									</a>
								</div>
							</div>
						</div>
						<div class="portfolio sort1" data-cat="sort1">
							<div class="portfolio-wrapper">
								<img src="/resources/images/works/8.png" alt="" />
								<div class="overlay1">
									<a href="/tutorial/tutorial?program_name=cs&program_os=window"">
										<div class="overlay-text"><i class="fa fa-book"></i> <span>C#</span></div>
									</a>
								</div>
							</div>
						</div>
						<div class="portfolio sort1 sort2" data-cat="sort1 sort2">
							<div class="portfolio-wrapper">
								<img src="/resources/images/works/9.png" alt="" />
								<div class="overlay1">
									<a href="/tutorial/tutorial?program_name=c&program_os=window">
										<div class="overlay-text"><i class="fa fa-book"></i> <span>C</span></div>
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
