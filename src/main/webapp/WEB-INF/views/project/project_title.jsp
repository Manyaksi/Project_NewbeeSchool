<%@ page contentType="text/html; charset=utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="project-contents-title">
	<div class="container">
	<div class="row">
      <div class="col-md-7 project-container-title">
        <h1>자바채팅프로젝트</h1>
        <div class="project-info">
          <span class="project-info-item"><span class="octicon octicon-repo"></span>${detailList["PROGRAM_NAME"] }</span>
          <span class="project-info-item"><span class="octicon octicon-code"></span>${detailList["GROUP_CATEGORY"] }</span>
          <span class="project-info-item"><span class="octicon octicon-clock"></span>${detailList["STARTLINE"] } ~ ${detailList["DEADLINE"] }</span>
          <span class="project-info-item"><span class="octicon octicon-clock"></span><i class="fa fa-map-marker"></i> ${detailList["GROUP_LOCATION"] }</span>
          
          
          
       <div class="text-center">   
       <div class="progress">
       <c:set var="count" value='${detailList["COUNT"]*100/detailList["GROUP_MAXCOUNT"]}'/>
                      <div data-percentage="0%" style="width: ${count }%;" class="progress-bar progress-bar-info" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                     <span>${detailList["COUNT"] }명 / 총 ${detailList["GROUP_MAXCOUNT"] }명</span>
        </div>
        </div>
        
      </div>
      
		<div class="space90"></div>
		<div class="space90"></div>
      
      <div class="col-md-5 project-container-title-right text-right">
      <form action="/project/project_enter" method="post">
      <input type="hidden" name="groupNo" value='${detailList["GROUP_NO"] }'>
	  <input type="hidden" name="userNo" value='15'>
      <button type="submit" class="btn btn-lg btn-primary">참가하기</button>
      </form>
      </div>
    </div>

</div>


</div>