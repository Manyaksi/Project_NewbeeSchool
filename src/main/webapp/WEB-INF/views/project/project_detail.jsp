<%@ page contentType="text/html; charset=utf-8" %>


<div class="space50"></div>
<section class="project-detail">
<!-- / Hide this on mobile since we want the video to be at the top -->
<div class="project-detail-title text-center">
<h2 class="jeju-gothic"><a class="green-dark" href="/projects/448232439/tall-women-in-clogs">${detailList["GROUP_SUBJECT"] }</a></h2>
<p class="green-dark h5 mb0 mobile-show">
by <b><a class="green-dark" href="/projects/448232439/tall-women-in-clogs/creator_bio">${detailList["NICKNAME"] }</a></b>
	<p>${detailList["ID"] }</p>
<div class="space80"></div>

</div>
<div class="container">
<div class="row">
<div class="col-md-4">
<span class="bold h5">분류</span>
<div class="num h1 bold">${detailList["GROUP_CATEGORY"] }</div>
<div class="space10"></div>
<span class="bold h5">언어종류</span> 




<div class="num h1 bold">${detailList["PROGRAM_NAME"] }</div>
<div class="space10"></div>

	
<span class="bold h5">기간</span> 
<div class="num h1 bold">${detailList["STARTLINE"] } ~ ${detailList["DEADLINE"] }</div>
<div class="space10"></div>
<div class="num h1 bold"><i class="fa fa-map-marker"></i> ${detailList["GROUP_LOCATION"] }</div>
	<div class="space50"></div>
	<div class="text-center">
	<form action="/project/project_enter" method="post">
	
	<input type="hidden" name="groupNo" value='${detailList["GROUP_NO"] }'>
	<input type="hidden" name="userNo" value='15'>
	<button class="inparty" type="submit">참여하기</button>
	</form>
		</div>
</div>
	<div class="col-md-7" >
	<ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
  <li role="presentation" class="active"><a href="#tab1" aria-controls="tab1" role="tab" data-toggle="tab">소개</a></li>
  <li role="presentation"><a href="#tab2" aria-controls="tab2" role="tab" data-toggle="tab">참여자현황</a></li>
  <li role="presentation"><a href="#tab3" aria-controls="tab3" role="tab" data-toggle="tab">이야기나누기</a></li>
</ul>
		
		<div class="space30"></div>
	<div class="tab-content">
		<div role="tabpanel" class="tab-pane active" id="tab1">
			${detailList["GROUP_CONTENT"] }
		
		</div>
		<div role="tabpanel" class="tab-pane" id="tab2">
			탭2
		
		</div>
		<div role="tabpanel" class="tab-pane" id="tab3">
			탭3
		
		</div>
		</div>
		<script>
		$('#myTab a').click(function (e) {
			  e.preventDefault()
			  $(this).tab('show')
			})
		</script>
		
		
	</div>
	</div>
	</div>
</section>
