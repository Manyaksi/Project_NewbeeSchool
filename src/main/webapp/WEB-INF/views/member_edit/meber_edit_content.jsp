<%@ page contentType="text/html; charset=utf-8" %>
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

<!--  프로필 컴포넌트 -->
<div class="col-md-6 ">
<div class="member-edit-panel panel-default">
  <div class="member-edit-panel-body row">
    <div class="col-md-12"><h2>프로필</h2></div>
    <div class="col-md-4">
    <img class="media-object img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/ManikRathee/128.jpg" alt="profile">
    <div class="text-center">
    <a class="btn btn-default picture-edit" >수정</a>
    </div>	
    </div>
    <div class="col-md-8">
    <div class="row">
    <div class="col-md-3"><p>닉네임</p></div>
    <div class="col-md-7"><b>곽선민</b> </div>
    <div class="col-md-2"><a class="btn btn-default" >수정</a></div>
   </div>
   
   <div class="row">
   <div class="col-md-3"><p>이메일</p></div>
   <div class="col-md-7">  <b>smgwak@gmail.com </b></div>
   <div class="col-md-2"><a class="btn btn-default">수정</a></div>
    </div>

	 <div class="row">
   <div class="col-md-4"><p>비밀번호</p></div>
   <div class="col-md-6"><b> ****** </b></div>
   <div class="col-md-2"> <a class="btn btn-default">수정</a></div>
     </div>
     
     
     <div class="row">
   <div class="col-md-4"><p>지역</p></div>
   <div class="col-md-6"><b> 서울,가산 </b></div>
   <div class="col-md-2"> <a class="btn btn-default">수정</a></div>
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
       <div class="col-md-6"><b>PYTHON</b></div>
       <div class="col-md-2"> <a class="btn btn-default">수정</a></div>
       </div>
           
           
       <div class="row">
       
       <div class="col-md-4"><p>내 포인트</p></div>
       <div class="col-md-6"><b>13,302</b></div>
       <div class="col-md-2"><a class="btn btn-default">상세보기</a></div>
       
       </div>    
           
        <div class="row">     
           <div class="col-md-4"><p>내가 쓴 글</p></div>
           <div class="col-md-6"><b>1,329개</b></div>
           <div class="col-md-2"><a class="btn btn-default">상세보기</a></div>
           
       </div>    
       
       
          <div class="row">  
      <div class="col-md-4"><p>내가 쓴 댓글</p></div>
           <div class="col-md-6"><b>213개</b></div>
           <div class="col-md-2"><a class="btn btn-default">상세보기</a></div>

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


