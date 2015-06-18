<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="board-title" id="content" tabindex="-1">
	<div class="container">
		<div class="row">
			<div class="col-md-4">
			<c:if test="${programName == 'CPP' }">
				<h1 style="color:white;">C++ 놀이터</h1>
			</c:if>
			<c:if test="${programName == 'java' }">
				<h1 style="color:white;">JAVA 놀이터</h1>
			</c:if>
			<c:if test="${programName == 'Swift' }">
				<h1 style="color:white;">Swift 놀이터</h1>
			</c:if>
			<c:if test="${programName == 'JavaScript' }">
				<h1 style="color:white;">JAVASCRIPT 놀이터</h1>
			</c:if>
			<c:if test="${programName == 'Python' }">
				<h1 style="color:white;">PYTHON 놀이터</h1>
			</c:if>
			<c:if test="${programName == 'Ruby' }">
				<h1 style="color:white;">RUBY 놀이터</h1>
			</c:if>
			<c:if test="${programName == 'PHP' }">
				<h1 style="color:white;">PHP 놀이터</h1>
			</c:if>
			<c:if test="${programName == 'Csharp' }">
				<h1 style="color:white;">C# 놀이터</h1>
			</c:if>
			<c:if test="${programName == 'C' }">
				<h1 style="color:white;">C 놀이터</h1>
			</c:if>
				<p style="color:white;" class='board-title-sub'>'개발자유치원' 초보개발자들의 놀이터입니다</p>

			</div>

				<nav class="navbar navbar-fixed-top"
					style="background-color: transparent;" role="navigation">
					<div class="container">
						<!-- Brand and toggle get grouped for better mobile display -->


						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1">



						<form class="navbar-form search-btn" role="search" action="/board/search" id="searchForm"
						method="post">
							<input type="hidden" name="category" value=${category }>
							<input type="hidden" name="program_name" value=${programName }>
							<input type="text" name="searchValue" id="searchValue"
								class="placeholder-white form-control pull-right"
								style="width: 300px; position: absolute; right: 100px; bottom: 5px; color: white; margin-right: 35px, background-color: transparent;"
								placeholder="검색어를 입력해주세요"> <span class="input-group-btn"
								style="position: absolute; right: 110px; bottom: 0px">
								<button type="reset" class="btn btn-default">
									<span class="glyphicon glyphicon-remove"> <span
										class="sr-only">Close</span>
									</span>
								</button>






							</span>
							<button type="submit" class="btn btn-default"
								style="position: absolute; right: 40px; bottom: 0px">
								<span class="glyphicon glyphicon-search"> <span
									class="sr-only">Search</span>
								</span>
							</button>
							
						</form>
						
						
						
						<form class="navbar-form" role="menu">
								<div class="board-nav">
									<ul class="board-nav-comp-ul">
										<li><a href="..">Java</a></li>
										<li><a href="..">Python</a></li>
										<li><a href="..">C++</a></li>
										<li><a href="..">Swift</a></li>
										<li><a href="..">C#</a></li>
										<li><a href="..">PHP</a></li>
										<li><a href="..">Ruby</a></li>
										<li><a href="..">Java Script</a></li>
										<li><a href="..">C</a></li>
									</ul>

								</div>

								<a class="btn btn-default" id="menu">
									<span class="fa fa-bars"> <span class="sr-only">Others</span>
									</span>
								</a>
						</form>


						<form class="navbar-form" role="write">
						<a class="btn btn-default" id="write" href="/board/writearticle?program_name=${programName }">
								<span class="glyphicon glyphicon-pencil" aria-hidden="true"><span
									class="sr-only">write</span>
								</span>
							</a>

					   </form>

					</div>
						<!-- /.navbar-collapse -->
					</div>
					<!-- /.container-fluid -->
				</nav>
		</div>
	</div>

</div>


