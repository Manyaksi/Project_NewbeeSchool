<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="col-md-12">
	<h2>
		<span class="logo">JAVA</span> 커뮤니티
	</h2>
	<p>java커뮤니티 소개글......</p>
</div>

<div class="space50"></div>


<div class="col-md-12">
	<div class="container">
		<div class="row">


			<ul id="project_filters" class="clearfix">
				<li><span class="project_filte rs active"
					data-filter="sort1 sort2 sort3 sort4">ALL</span></li>
				<li><span class="project_filters" data-filter="sort1">JAVA</span></li>
				<li><span class="project_filters" data-filter="sort2">Mobile</span></li>
				<li><span class="project_filters" data-filter="sort3">Design</span></li>
				<li><span class="project_filters" data-filter="sort4">Photography</span></li>
				<li><span class="project_filters" data-filter="sort5">Type</span></li>
			</ul>

			<c:forEach var="project" items="${list }">
				<div class="col-sm-6 col-md-4">
					<div class="thumbnail">
						<img src="/resources/images/works/1.jpg" alt="...">
						<div class="caption">
							<p class="project-title">${project["GROUP_SUBJECT"] }</p>
							<p class="project-byline">${project["NICKNAME"] }</p>
							<p class="project-blurb">${project["group_content"] }</p>

							<div class="project-location">
								<span><i class="fa fa-location-arrow"></i></span> <span
									class="location-name">${project["GROUP_LOCATION"] }</span>
							</div>

							<div class="project-card-footer">

								<div class="progress">
								<c:set var="count" value='${project["COUNT"]*100/project["GROUP_MAXCOUNT"]}'/>
									<div class="progress-bar" role="progressbar" aria-valuenow="60"
										
										aria-valuemin="0" aria-valuemax="100" style="width: ${count }%;"> ${count }%</div>
								</div>
								<p class="text-center">${project["COUNT"] }명 / ${project["GROUP_MAXCOUNT"] }명</p>
								<div class="text-center">
								
								<form action="/project/project_detail" method="post">
									<input type="hidden" name="groupNo" value='${project["GROUP_NO"] }'>
									<input type="hidden" name="userNo" value='15'>
									<button class="btn btn-primary" type="submit">참가하기</button>
									
								</form>
								</div>
							</div>
						</div>
					</div>
				</div>

			</c:forEach>


		</div>

		<div class="space30"></div>
		<a class="btn-lite" href="index.html#">더보기</a>
	</div>

	<div class="col-md-12">



		<div class="paging">

			<div class="paging-left-comp">
				<a class="category-boxedbtn font-black" href="write.html">목록</a>
			</div>

			<ul class="pagination no-margin font-black">
				<li class="font-black"><a class="font-black" href="#"
					aria-label="Previous"> <span aria-hidden="true">이전페이지</span>
				</a></li>
				<li><a class="font-black" href="#">1</a></li>
				<li><a class="font-black" href="#">2</a></li>
				<li><a class="font-black" href="#">3</a></li>
				<li><a class="font-black" href="#">4</a></li>
				<li><a class="font-black" href="#">5</a></li>
				<li><a class="font-black" href="#" aria-label="Next"> <span
						aria-hidden="true">다음페이지</span>
				</a></li>
			</ul>

			<div class="paging-right-comp">
				<a class="category-boxed btn font-black" href="write.html">글쓰기</a>
			</div>
		</div>


	</div>

</div>



