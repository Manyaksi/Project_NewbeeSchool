<%@ page contentType="text/html; charset=utf-8" %>


<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
	<legend><h1 class="jeju-gothic">프로젝트 생성</h1></legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-2 control-label" for="project-location">지역</label>  
  <div class="col-md-5">
  <input id="project-location" name="project-location" type="text" placeholder="지역을 입력해주세요." class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-2 control-label" for="project-start-date">시작기간</label>  
  <div class="col-md-3">
  <input id="project-start-date" name="project-start-date" type="text" placeholder="ex) 2015.06.02" class="form-control input-md">
  </div>
	
	<label class="col-md-2 control-label" for="project-end-date">종료기간</label>  
  <div class="col-md-3">
  <input id="project-end-date" name="project-end-date" type="text" placeholder="ex) 2015.06.02" class="form-control input-md">
    
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-2 control-label" for="project-category">카테고리</label>
  <div class="col-md-4">
    <select id="project-category" name="project-category" class="form-control">
      <option value="1">스터디</option>
      <option value="2">프로젝트</option>
      <option value="3">번개</option>
    </select>
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-2 control-label" for="project-end-date">프로그래밍 언어</label>
  <div class="col-md-4">
    <select id="project-end-date" name="project-end-date" class="form-control">
      <option value="1">java</option>
      <option value="2">c</option>
      <option value="3">c++</option>
    </select>
  </div>
</div>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-2 control-label" for="project-number-of-people">참가인원</label>
  <div class="col-md-2">
    <select id="project-number-of-people" name="project-number-of-people" class="form-control">
      <option value="1">1</option>
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
  <input id="project-start-date" name="project-start-date" type="text" placeholder="서울,가산" class="form-control input-md">
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-2 control-label" for="project-subject">제목</label>  
  <div class="col-md-8">
  <input id="project-subject" name="project-subject" type="text" placeholder="제목을 입력해주세요" class="form-control input-md">
    
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-2 control-label" for="project-contents">내용</label>
  <div class="col-md-10">                     
   <div id="summernote"></div>
  </div>
</div>

<!-- Button (Double) -->
<div class="form-group">
  <div class="col-md-3 col-md-offset-9 text-right">
    <button id="project-create" name="project-create" class="btn btn-success">작성완료</button>
    <button id="project-close" name="project-close" class="btn btn-danger">취소</button>
  </div>
</div>

</fieldset>
</form>
