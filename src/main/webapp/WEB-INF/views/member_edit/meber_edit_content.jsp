<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.member-edit-panel {
  max-height: 310px;
  min-height: 310px;
  margin-bottom: 20px;
  background-color: #ffffff;
  border: 1px solid lightgray;
  border-radius: 4px;
  -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
          box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
}

.member-edit-panel-body {
  padding-bottom: 30px;
  padding-left:20px;
  padding-right:20px;
}

.member-edit-panel-body:before,
.member-edit-panel-body:after {
  display: table;
  content: " ";
}

.member-edit-panel-body:after {
  clear: both;
}

.member-edit-panel-body:before,
.member-edit-panel-body:after {
  display: table;
  content: " ";
}

.member-edit-panel-body:after {
  clear: both;
}


h1,h2{
  font-family: seoulNamsan;
}

h2{
 margin-bottom:40px;
}


p {
	margin-bottom:20px;
	font-family; nanumgothic;
	
}

.picture-edit{
	vertical-align: top;
	text-align: center;
	margin-top:20px;
	margin-left:auto;
	margin-right:auto;
}
.back-out{
	width:100%;
	position: relative;
min-height: 1px;
padding-right: 15px;
padding-left: 15px;
}

</style>
<!--  회원정보수정 타이틀 -->


<!--  회원정보수정 컴포넌트 -->
<div class="row">

<!--  모달들 -->
<!--  사진수정 모달 -->
<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" id="registphoto">
  <div class="modal-dialog modal-sm">
    <div class="modal-content" style="padding:50px;">
      <form id="inserForm" action="/users/photo" enctype="multipart/form-data" method="POST">
	<input type="file" id="userPhoto" name="userPhoto">
	<input type="hidden" name="userNo" value="${user.userNo }">
	<button type="submit">확인</button>
	</form>
      <button style="visibility: hidden;" type="button" class="category-boxed btn font-black" data-dismiss="modal" id="close1">Close</button>
    </div>
  </div>
</div>

<!--  이름수정 모달 -->
<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" id="nicknameedit">
  <div class="modal-dialog modal-sm">
    <div class="modal-content" style="padding:50px;">
      <input type="text" name="nicknametext" id="nicknametext" >
      <a class="category-boxed btn font-black" id="nickname">확인</a>
      <button style="visibility: hidden;" type="button" class="category-boxed btn font-black" data-dismiss="modal" id="close1">Close</button>
    </div>
  </div>
</div>

<!-- 아이디(이메일) 수정 모달  -->
<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" id="emailedit">
  <div class="modal-dialog modal-sm">
    <div class="modal-content" style="padding:50px;">
      <input type="text" name="emailtext" id="emailtext">
      <a class="category-boxed btn font-black" id="email">확인</a>
       <button style="visibility: hidden;" type="button" class="category-boxed btn font-black" data-dismiss="modal" id="close2">Close</button>
    </div>
  </div>
</div>

<!--  비밀번호 수정 모달 -->
<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" id="passwdedit">
  <div class="modal-dialog modal-sm">
    <div class="modal-content" style="padding:50px;">
      <input type="text" name="passwdtext" id="passwdtext">
      <a class="category-boxed btn font-black" id="passwd">확인</a>
       <button style="visibility: hidden;" type="button" class="category-boxed btn font-black" data-dismiss="modal" id="close3">Close</button>
    </div>
  </div>
</div>

<!-- 지역 수정 모달  -->
<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" id="locationedit">
  <div class="modal-dialog modal-sm">
    <div class="modal-content" style="padding:50px;">
      <input type="text" name="locationtext" id="locationtext">
      <a class="category-boxed btn font-black" id="location">확인</a>
       <button style="visibility: hidden;" type="button" class="category-boxed btn font-black" data-dismiss="modal" id="close4">Close</button>
    </div>
  </div>
</div>

<!--  커뮤니티 수정 모달 -->
<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" id="programnameedit">
  <div class="modal-dialog modal-sm">
    <div class="modal-content" style="padding:50px;">
      <!-- <input type="text" name="programtext" id="programtext"> -->
    <select id="programtext" name="programtext" class="form-control">
      <option value="java">java</option>
      <option value="Python">Python</option>
      <option value="CPP">CPP</option>
      <option value="Swift">Swift</option>
      <option value="Csharp">Csharp</option>
      <option value="PHP">PHP</option>
      <option value="Ruby">Ruby</option>
      <option value="JavaScript">JavaScript</option>
      <option value="C">C</option>
    </select>
      <a class="category-boxed btn font-black" id="programname">확인</a>
       <button style="visibility: hidden;" type="button" class="category-boxed btn font-black" data-dismiss="modal" id="close5">Close</button>
    </div>
  </div>
</div>

<!--  작성 게시글 목록 -->

<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" id="articlelist">
  <div class="modal-dialog modal-lg">
    <div class="modal-content" style="padding:50px;">
    <!--  게시글 테이블 -->

  <c:forEach items="${articleList }" var="article">  


	<!-- li -->
	<div class="board-article-li narrow row">


		<div class="col-md-1">
		<div class="board-views text-left">
					<p class="board-li-type">${article["CATEGORY"] }</p>
				</div>
		</div>		
		<div class="col-md-7">
			<div class="board-li-title">
				<a href="/board/boardread?article_no=${article['ARTICLE_NO'] }&program_name=${article['PROGRAM_NAME']}">${article["SUBJECT"] }</a>
			</div>
	
		</div>
			

<div class="col-md-4">
	<div class="time-nickname text-center">
				<a> <span>${article["WRITE"] }</span></a><br>
				<a><b>${article["NICKNAME"] }</b></a>
			</div>
			<div class="board-article-li-num text-center">
				<div class="board-views">
					<div class="mini-counts">
						<span title="0 votes">${article["LIKE_COUNT"] }</span>
					</div>
					<div>추천</div>
				</div>
				<div class="board-views">
					<div class="mini-counts">
						<span title="0 answers">${article["COMMENTCOUNT"] }</span>
					</div>
					<div>댓글</div>
				</div>
				<div class="board-views">
					<div class="mini-counts">
						<span title="1 view">${article["HIT_COUNT"] }</span>
					</div>
					<div>조회수</div>
				</div>
			</div>
		</div>

	</div>


</c:forEach>
    
       <button style="visibility: hidden;" type="button" class="category-boxed btn font-black" data-dismiss="modal" id="close4">Close</button>
    </div>
  </div>
</div>
<!--  작성 댓글 목록 -->

<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" id="commentlist">
  <div class="modal-dialog modal-lg">
    <div class="modal-content" style="padding:50px;">
    <!--  댓글 테이블 -->
		<table class="table" id="paginated">
		<thead></thead>

<tbody>
 <c:forEach items="${commentList }" var="comment">  
	<tr>
<td class="col-md-3 text-center">
	<img class="media-object img-circle" src="/resources/images/${comment['PHOTO'] }" style="width:100px; height:100px;" alt="profile">
</td>


	<td class="col-md-7">
		<p><b> ${comment["NICKNAME"] } </b></p>
		<span>${comment["COMMENT_CONTENT"] }</span>
	</td>		
	<td class="col-md-2 text-right bottom-border">
		<p>${comment["WRITE"] }</p>
		<a class="category-boxed btn font-black" href="/users/mycommentremove?comment_no=${comment['COMMENT_NO'] }&article_no=${comment['ARTICLE_NO'] }&userNo=${comment['USERNO']}">댓글삭제</a>
	</td>
</tr>

</c:forEach>
</tbody>

</table>
 
       <button style="visibility: hidden;" type="button" class="category-boxed btn font-black" data-dismiss="modal" id="close4">Close</button>
    </div>
  </div>
</div>


<!--  프로필 컴포넌트 -->
<div class="col-md-6 ">
<div class="member-edit-panel panel-default">
  <div class="member-edit-panel-body row">
    <div class="col-md-12"><h2>프로필</h2></div>
    <div class="col-md-4">
    <img class="media-object img-circle" src="/resources/images/${user.photo }" style="width:100px; height:100px;" alt="profile">
    <div class="text-center">
    <%-- <a class="btn btn-default picture-edit" >수정${user.photo }</a> --%>
    <button type="button" class="btn btn-default" data-toggle="modal" data-target="#registphoto">수정</button>
    
    </div>	
    </div>
    <div class="col-md-8">
    <div class="row">
    <div class="col-md-3"><p>닉네임</p></div>
    <div class="col-md-7"><b><span id="nicknamemessage"> ${user.nickname }</span> </b> </div>
    <div class="col-md-2"><button type="button" class="btn btn-default" data-toggle="modal" data-target="#nicknameedit">수정</button></div>
    
  
   </div>
   
   <div class="row">
   <div class="col-md-3"><p>이메일</p></div>
   <div class="col-md-7">  <b><span id="emailmessage">${user.id }</span></b></div>
   <div class="col-md-2"><button type="button" class="btn btn-default" data-toggle="modal" data-target="#emailedit">수정</button></div>
    </div>

	 <div class="row">
   <div class="col-md-4"><p>비밀번호</p></div>
   <div class="col-md-6"><p><span id="passwdmessage">${user.password } </span></p></div>
   <div class="col-md-2"><button type="button" class="btn btn-default" data-toggle="modal" data-target="#passwdedit">수정</button></div>
     </div>
     
     
     <div class="row">
   <div class="col-md-4"><p>지역</p></div>
   <div class="col-md-6"><b><span id="locationmessage">${user.location }</span></b></div>
   <div class="col-md-2"><button type="button" class="btn btn-default" data-toggle="modal" data-target="#locationedit">수정</button></div>
     </div>
    </div>
    
  </div>
</div>
</div>

<!--  활동 내역 -->  
<div class="col-md-6 ">
  <div class="member-edit-panel panel-default">
  <div class="member-edit-panel-body">
       <div class="col-md-12"><h2>활동내역</h2></div>
       
       <div class="row">
       <div class="col-md-4"><p>소속 커뮤니티</p></div>
       <div class="col-md-6"><b><span id="programmessage">${user.programName }</span></b></div>
       <div class="col-md-2"><button type="button" class="btn btn-default" data-toggle="modal" data-target="#programnameedit">수정</button></div>
       </div>
           
           
       <div class="row">
       
       <div class="col-md-4"><p>포인트</p></div>
       <div class="col-md-8"><b>${user.point }</b></div>
       
       
       
       </div>    
           
        <div class="row">     
           <div class="col-md-4"><p>내가 쓴 글</p></div>
           <div class="col-md-6"><b>${articleCount }개</b></div>
          <div class="col-md-2"><button type="button" class="btn btn-default" data-toggle="modal" data-target="#articlelist">상세보기</button></div>
           
       </div> 
       
       <div class="row">
       <div class="col-md-4"><p>댓글수</p></div>
       <div class="col-md-6"><b>${commentCount }개</b></div>   
       <div class="col-md-2"><button type="button" class="btn btn-default" data-toggle="modal" data-target="#commentlist">상세보기</button></div>
       </div>
  </div>
  </div>
  </div>
  

<!--  Facebook 연동 -->  
<div class="col-md-6 ">
  <div class="member-edit-panel panel-default">
  <div class="member-edit-panel-body">
       <div class="col-md-12"><h2>페이스북 연동</h2></div>
       
       <div class="row">
      

         </div>  
  </div>
  </div>
  </div>
  
  

</div>

<div class="col-md-12">
  
  <div class="back-out">
  <p>개발유치원을 더 이상 이용하지 않는다면 <a href=""><b>회원탈퇴</b></a></p>
  </div>
  
</div>


