<%@ page contentType="text/html; charset=utf-8" %>

<form name="writeForm" id="writeForm" class="form-horizontal" action="/project/project_register" method="get">
<fieldset>

<!-- Form Name -->
	<legend><h1 class="jeju-gothic">프로젝트 생성</h1></legend>

<!-- Text input-->


<!-- Text input-->
<div class="form-group">
  <label class="col-md-2 control-label" for="project-start-date">시작기간</label>  
  <div class="col-md-3">
  <input id="project-start-date" name="startline" type="text" placeholder="ex) 2015.06.02" class="form-control input-md">
  </div>
	
	<label class="col-md-2 control-label" for="project-end-date">종료기간</label>  
  <div class="col-md-3">
  <input id="project-end-date" name="deadline" type="text" placeholder="ex) 2015.06.02" class="form-control input-md">
    
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-2 control-label" for="project-category">카테고리</label>
  <div class="col-md-4">
    <select id="project-category" name="groupCategory" class="form-control">
      <option value="스터디">스터디</option>
      <option value="프로젝트">프로젝트</option>
      <option value="번개">번개</option>
      <option value="기타">기타</option>
    </select>
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-2 control-label" for="project-end-date">프로그래밍 언어</label>
  <div class="col-md-4">
    <select id="project-end-date" name="programName" class="form-control">
      <option value="JAVA">JAVA</option>
      <option value="C">C</option>
      <option value="CPP">C++</option>
      <option value="CSharp">C#</option>
      <option value="Javascript">Javascript</option>
      <option value="Phython">Phython</option>
      <option value="PHP">PHP</option>
      <option value="Swift">Swift</option>
      <option value="RUBY">RUBY</option>
    </select>
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-2 control-label" for="project-number-of-people">참가인원</label>
  <div class="col-md-2">
    <select id="project-number-of-people" name="groupMaxcount" class="form-control">
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
      <option value="5">5</option>
      <option value="6">6</option>
      <option value="7">7</option>
      <option value="8">8</option>
      <option value="9">9</option>
      <option value="10">10</option>
    </select>
  </div>
  
  
  <label class="col-md-2 control-label" for="project-start-date">위치</label>  
  <div class="col-md-3">
  <!-- <input id="project-start-date" name="project-start-date" type="text" placeholder="서울,가산" class="form-control input-md" data-toggle="modal" data-target="#myModal" > -->
  <input id="project-start-date" name="project-start-date" type="text" placeholder="서울,가산" class="form-control input-md" data-toggle="modal" data-target="#myModal" >
   		<input name="groupLocation" id="location" class="form-control" type="hidden" value="" style="width: 114%;">
      	<input name="latitude" id="latitude" class="form-control" type="hidden" value="" style="width: 114%;">
     	 <input name="longitude" id="longitude" class="form-control" type="hidden" value="" style="width: 114%;">
     	 <input name="userNo" class="form-control" type="hidden" value="${cookie.loginId.value}" style="width: 114%;"><!-- 쿠키 부분 -->
  </div>
</div>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" style="padding-top: 10%;">
    <div class="modal-content">
					<div class="modal-header"
						style="padding: 5px; padding-left: 20px; padding-top: 10px;">
						<button id="closeButton" type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true"
								style="padding: 20px; padding-top: 50px; font-size: 40px;">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel"
							style="font-family: seoulNamsan; font-weight: bold; font-size: 28px;">장소
							선택하기</h4>
					</div>
					<div class="modal-body" style="padding: 0px;">
						<div id="map-canvas" style="width: 100%; height: 300px;"></div>
						
						
						<div id="panel" class="col-md-8">
      <input name="mapLocation" id="address" class="form-control" type="text" placeholder="서울,가산" style="width: 114%;">
     

      <input type="button" value="주소 검색하기" class="btn btn-primary" onclick="codeAddress()" style="
    position: absolute;
    right: -170px;
    top: 5.9px;
    /* padding: 5px 10px; */
">
  
    </div>
						
						
						
					

					</div>
					<div class="modal-footer"
						style="margin-top: 0px; padding-bottom: 40px;">
					</div>
				</div>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-2 control-label" for="project-subject">제목</label>  
  <div class="col-md-8">
  <input id="project-subject" name="groupSubject" type="text" placeholder="제목을 입력해주세요" class="form-control input-md">
    
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-2 control-label" for="project-contents">내용</label>
  <div class="col-md-10">                     
   <div id="summernote"></div>
  </div>
</div>
<input type="hidden" name="groupContent" value="">

<!-- Button (Double) -->
<div class="form-group">
  <div class="col-md-3 col-md-offset-9 text-right">
    <button type="button" id="project-create" name="project-create" class="btn btn-success">작성완료</button>
    <button type="button" id="project-close" name="project-close" class="btn btn-danger" onclick="cancle()">취소</button>
  </div>
</div>

</fieldset>
</form>
