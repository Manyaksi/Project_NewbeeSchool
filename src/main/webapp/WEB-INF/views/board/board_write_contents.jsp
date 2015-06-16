<%@ page contentType="text/html; charset=utf-8" %>
<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend><h1 class="jeju-gothic">글쓰기</h1></legend>

<!-- Select Basic -->
<div class="form-group">
  <label class="col-md-1 control-label" for="type">분류</label>
  <div class="col-md-2">
    <select id="type" name="type" class="form-control">
      <option value="1">일반</option>
      <option value="2">질문</option>
      <option value="3">정보</option>
      <option value="4">강좌</option>
      <option value="5">TIP</option>
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

  </div>
</div>

<!-- Button (Double) -->
<div class="form-group">
  <div class="col-md-12 text-right">
    <button id="write_btn" name="write_btn" class="btn btn-primary">작성완료</button>
    <button id="cancel" name="cancel" class="btn btn-default">취소</button>
  </div>
</div>

</fieldset>
</form>
