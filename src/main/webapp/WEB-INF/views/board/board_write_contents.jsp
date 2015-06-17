<%@ page contentType="text/html; charset=utf-8" %>
<form class="form-horizontal" action="/board/writearticle" method="post" id="writearticle">
<fieldset>

<!-- Form Name -->
<legend><h1 class="jeju-gothic">글쓰기</h1></legend>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-1 control-label" for="type">분류</label>
  <div class="col-md-2">
    <select id="type" name="category" class="form-control">
      <option value="일반">일반</option>
      <option value="질문">질문</option>
      <option value="정보">정보</option>
      <option value="강좌">강좌</option>
      <option value="TIP">TIP</option>
    </select>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-1 control-label" for="subject">제목</label>  
  <div class="col-md-11">
  <input id="subject" name="subject" type="text" placeholder="제목을 입력해주세요" class="form-control input-md">
    
  </div>
</div>

<!-- Textarea -->
<div class="form-group" >
  <label class="col-md-1 control-label" for="content">내용</label> 
  <div class="col-md-11">                     

<div id="summernote"></div>

<input type="hidden" name="content" value="" class="content">


  </div>
</div>

<!-- Button (Double) -->
<div class="form-group">
  <div class="col-md-12 text-right">
    <button id="write_btn" name="write_btn" class="btn btn-primary">작성완료</button>
    <a id="cancel" name="cancel" class="btn btn-default" href="/board/boardlist?program_name=${programName }">취소</a>
  </div>
</div>
<input type="hidden" name="user_no" value="2">
<input type="hidden" name="program_name" value="${programName }">
</fieldset>
</form>
