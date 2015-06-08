<%@ page contentType="text/html; charset=utf-8" %>
		<nav class="navbar navbar-default navbar-fixed-top top-nav " role="navigation">
			<div class="container ">
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
						<li><a href="/#learn">배우기</a></li>
						<li><a href="/#community">커뮤니티</a></li>
						<li><a href="/#project">프로젝트</a></li>
					</ul>
				</div>
				<div class="collapse navbar-collapse navbar-right navbar-ex1-collapse">
					<ul class="nav navbar-nav nanum-gothic-coding">
						<li class="dropdown"> <a href="#" class="dropdown-toggle" data-toggle="dropdown">로그인 <span class="caret"></span></a>
			<ul id="login-dp" class="dropdown-menu">
				<li>
					 <div class="row">
							<div class="col-md-12 jeju-gothic">
				
								<div class="social-buttons">
									<button type="submit" class="btn btn-fb btn-block"><i class="fa fa-facebook space-right10"></i>Facebook으로 로그인</button>
								</div>
                                
								 <form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
										<div class="form-group">
											 <label class="sr-only" for="exampleInputEmail2">이메일 주소</label>
											 <input type="email" class="form-control" id="exampleInputEmail2" placeholder="이메일 주소" required>
										</div>
										<div class="form-group">
											 <label class="sr-only" for="exampleInputPassword2">비밀번호</label>
											 <input type="password" class="form-control" id="exampleInputPassword2" placeholder="비밀번호" required>
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
								초보개발자시나요? <a href="#"><b>바로가입</b></a>
							</div>
					 </div>
				</li>
			</ul>
        </li>
                        
                        
                        
                        
                        
                        
						<li><a href="/registeration">회원가입</a></li>
						<li><a class="fa fa-bars" href="index.html#"></a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container -->
		</nav>
