<%@ page contentType="text/html; charset=utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="project-contents">
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div id="googleMap" style="width: 550; height: 500px;"></div>
				<div class="space50"></div>
				
				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li role="presentation" class="active"><a href="#summery" aria-controls="summery" role="tab" data-toggle="tab">소개</a></li>
					<li role="presentation"><a href="#people" aria-controls="people" role="tab" data-toggle="tab">참여자현황</a></li>
				</ul>

				<div class="space30"></div>


				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="summery">
						${detailList["GROUP_CONTENT"] }
					</div>
					<div role="tabpanel" class="tab-pane" id="people">
				<c:forEach var="entry" items="${userList }">
					<ul class="media-list">
                      <li class="media">
                        <a class="pull-left" href="#">
                          <img class="media-object img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/lady_katherine/128.jpg" alt="profile">
                        </a>
                        <div class="media-body">
                          <div class="well ">
                              <h4 class="media-heading text-uppercase reviews">${entry.nickname }</h4>
                              <ul class="media-date text-uppercase reviews list-inline">
                                <li class="dd">22</li>
                                <li class="mm">09</li>
                                <li class="aaaa">2014</li>
                              </ul>
                          </div>              
                        </div>
                      </li>
                    </ul> 
                    </c:forEach>
				</div>
				

				</div>
				
					
			</div>
			<div class="col-md-6">
				

<style>

/*
    Image credits:
    uifaces.com (http://uifaces.com/authorized)
*/
.nav-tabs > li{
 margin-bottom: -2px;
}

.page-header { position: relative; }
.reviews {
    color: gray;    
    font-weight: nomal;
    margin: 10px auto 20px;
}
.notes {
    color: #999;
    font-size: 12px;
}
.media .media-object { max-width: 60px; }
.media-body { position: relative; }
.media-date { 
    position: absolute; 
    right: 25px;
    top: 25px;
}
.media-date li { padding: 0; }
.media-date li:first-child:before { content: ''; }
.media-date li:before { 
    content: '.'; 
    margin-left: -2px; 
    margin-right: 2px;
}
.media-comment { margin-bottom: 20px; }
.media-replied { margin: 0 0 5px 10px; }
.media-replied .media-heading { padding-left: 6px; }

.btn-circle {
	font-weight:nomal;
    font-size: 10px;
    padding: 5px 10px;
    border-radius: 2px;
}
.btn-circle span { padding-right: 6px; }
.embed-responsive { margin-bottom: 10px; }
.tab-content {
    padding: 10px 5px;
   
   
   /* border: 1px solid #ddd; */
    border-top: 0;
   /* border-bottom-right-radius: 4px;*/
   /* border-bottom-left-radius: 4px;*/
}
.custom-input-file {
    overflow: hidden;
    position: relative;
    width: 120px;
    height: 120px;
    background: #eee url('https://s3.amazonaws.com/uifaces/faces/twitter/walterstephanie/128.jpg');    
    background-size: 120px;
    border-radius: 120px;
}
input[type="file"]{
    z-index: 999;
    line-height: 0;
    font-size: 0;
    position: absolute;
    opacity: 0;
    filter: alpha(opacity = 0);-ms-filter: "alpha(opacity=0)";
    margin: 0;
    padding:0;
    left:0;
}
.uploadPhoto {
    position: absolute;
    top: 25%;
    left: 25%;
    display: none;
    width: 50%;
    height: 50%;
    color: #fff;    
    text-align: center;
    line-height: 60px;
    text-transform: uppercase;    
    background-color: rgba(0,0,0,.3);
    border-radius: 50px;
    cursor: pointer;
}
.custom-input-file:hover .uploadPhoto { display: block; }


.well {
	background-color: #fff;
border: 1px solid #e3e3e3;
border-radius: 2px;
}
</style>

<div class="col-md-12 content">


  <div class="row">
  
    <!--  case: 로그아웃... -->
    <div class="col-sm-12" id="logout">
        <div class="comment-tabs">
            <ul class="nav nav-tabs" role="tablist">
                <li class="active"><a href="#comments-logout" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">댓글</h4></a></li>
                <li><a href="#add-comment" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">댓글 남기기</h4></a></li>
            </ul>            
            <div class="tab-content">
                <div class="tab-pane active" id="comments-logout">                
                    <ul class="prd_list media-list" id="list_scroll">
                    <c:forEach var="commentList" items="${commentList }">
                      <li class="media">
                        <a class="pull-left" href="#">
                          <img class="media-object img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/kurafire/128.jpg" alt="profile">
                        </a>
                        <div class="media-body">
                          <div class="well ">
                              <h4 class="media-heading text-uppercase reviews">${commentList["NICKNAME"] }</h4>
                              <ul class="media-date text-uppercase reviews list-inline">
                                <li>${commentList["GROUPCOMM_DATE"] }</li>
                                
                              </ul>
                              <p class="media-comment">
                                ${commentList["GROUPCOMM_CONTENT"] }
                              </p>
                          </div>              
                        </div>
                      </li>
                      </c:forEach>
                    </ul> 
                </div>
                <div class="tab-pane" id="add-comment">
                    <form action="/project/comment_register" method="post" class="form-horizontal" id="commentForm" role="form"> 
                        <div class="form-group">
                            <label for="email" class="col-sm-2 control-label">댓글내용</label>
                            <div class="col-sm-10">
                              <textarea class="form-control" name="groupcommContent" id="addComment" rows="5"></textarea>
                              <span id="message">0/200</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">                    
                            	<input type="hidden" name="groupNo" value='${detailList["GROUP_NO"] }'>
                            	<input type="hidden" name="userNo" value='10'>
                                <button class="btn btn-success btn-circle text-uppercase" type="submit" id="submitComment"><span class="glyphicon glyphicon-send"></span> 댓글등록 </button>
                            </div>
                        </div>            
                    </form>
                </div>
                 <div id="loadmoreajaxloader" style="display:none; text-align: center;"><img src="/resources/images/loading.gif"/></div>
					  </div>
   
            </div>
        </div>
	</div>
  </div>
  <div class="row">
  
  <!-- case:로그인... -->
  <!--  
    <div class="col-sm-10 col-sm-offset-2" id="login">
        <div class="comment-tabs">
            <ul class="nav nav-tabs" role="tablist">
                <li class="active"><a href="#comments-login" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">댓글</h4></a></li>
                <li><a href="#add-comment-disabled" role="tab" data-toggle="tab"><h4 class="reviews text-capitalize">댓글 남기기</h4></a></li>
            </ul>            
            <div class="tab-content">
                <div class="tab-pane active" id="comments-login">                
                    <ul class="media-list">
                      <li class="media">
                        <a class="pull-left" href="#">
                          <img class="media-object img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/dancounsell/128.jpg" alt="profile">
                        </a>
                        <div class="media-body">
                          <div class="well well-lg">
                              <h4 class="media-heading text-uppercase reviews">Marco</h4>
                              <ul class="media-date text-uppercase reviews list-inline">
                                <li class="dd">22</li>
                                <li class="mm">09</li>
                                <li class="aaaa">2014</li>
                              </ul>
                              <p class="media-comment">
                                Great snippet! Thanks for sharing.
                              </p>
                              <a class="btn btn-info btn-circle text-uppercase" href="#" id="reply"><span class="glyphicon glyphicon-share-alt"></span> 댓글달기</a>
                              <a class="btn btn-warning btn-circle text-uppercase" data-toggle="collapse" href="#replyThree"><span class="glyphicon glyphicon-comment"></span> 2 개의 댓글</a>
                          </div>              
                        </div>
                        <div class="collapse" id="replyThree">
                            <ul class="media-list">
                                <li class="media media-replied">
                                    <a class="pull-left" href="#">
                                      <img class="media-object img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/ManikRathee/128.jpg" alt="profile">
                                    </a>
                                    <div class="media-body">
                                      <div class="well well-lg">
                                          <h4 class="media-heading text-uppercase reviews"><span class="glyphicon glyphicon-share-alt"></span> The Hipster</h4>
                                          <ul class="media-date text-uppercase reviews list-inline">
                                            <li class="dd">22</li>
                                            <li class="mm">09</li>
                                            <li class="aaaa">2014</li>
                                          </ul>
                                          <p class="media-comment">
                                            Nice job Maria.
                                          </p>
                                          <a class="btn btn-info btn-circle text-uppercase" href="#" id="reply"><span class="glyphicon glyphicon-share-alt"></span> 댓글달기</a>
                                      </div>              
                                    </div>
                                </li>
                                <li class="media media-replied" id="replied">
                                    <a class="pull-left" href="#">
                                      <img class="media-object img-circle" src="https://pbs.twimg.com/profile_images/442656111636668417/Q_9oP8iZ.jpeg" alt="profile">
                                    </a>
                                    <div class="media-body">
                                      <div class="well well-lg">
                                          <h4 class="media-heading text-uppercase reviews"><span class="glyphicon glyphicon-share-alt"></span> Mary</h4></h4>
                                          <ul class="media-date text-uppercase reviews list-inline">
                                            <li class="dd">22</li>
                                            <li class="mm">09</li>
                                            <li class="aaaa">2014</li>
                                          </ul>
                                          <p class="media-comment">
                                            Thank you Guys!
                                          </p>
                                          <a class="btn btn-info btn-circle text-uppercase" href="#" id="reply"><span class="glyphicon glyphicon-share-alt"></span> 댓글달기</a>
                                      </div>              
                                    </div>
                                </li>
                            </ul>  
                        </div>
                      </li>          
                      <li class="media">
                        <a class="pull-left" href="#">
                          <img class="media-object img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/kurafire/128.jpg" alt="profile">
                        </a>
                        <div class="media-body">
                          <div class="well well-lg">
                              <h4 class="media-heading text-uppercase reviews">Nico</h4>
                              <ul class="media-date text-uppercase reviews list-inline">
                                <li class="dd">22</li>
                                <li class="mm">09</li>
                                <li class="aaaa">2014</li>
                              </ul>
                              <p class="media-comment">
                                I'm looking for that. Thanks!
                              </p>
                              <div class="embed-responsive embed-responsive-16by9">
                                  <iframe class="embed-responsive-item" src="//www.youtube.com/embed/80lNjkcp6gI" allowfullscreen></iframe>
                              </div>
                              <a class="btn btn-info btn-circle text-uppercase" href="#" id="reply"><span class="glyphicon glyphicon-share-alt"></span> 댓글달기</a>
                          </div>              
                        </div>
                      </li>
                      <li class="media">
                        <a class="pull-left" href="#">
                          <img class="media-object img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/lady_katherine/128.jpg" alt="profile">
                        </a>
                        <div class="media-body">
                          <div class="well well-lg">
                              <h4 class="media-heading text-uppercase reviews">Kriztine</h4>
                              <ul class="media-date text-uppercase reviews list-inline">
                                <li class="dd">22</li>
                                <li class="mm">09</li>
                                <li class="aaaa">2014</li>
                              </ul>
                              <p class="media-comment">
                                Yehhhh... Thanks for sharing.
                              </p>
                              <a class="btn btn-info btn-circle text-uppercase" href="#" id="reply"><span class="glyphicon glyphicon-share-alt"></span> 댓글달기</a>
                              <a class="btn btn-warning btn-circle text-uppercase" data-toggle="collapse" href="#replyFour"><span class="glyphicon glyphicon-comment"></span> 1 개의 댓글</a>
                          </div>              
                        </div>
                        <div class="collapse" id="replyFour">
                            <ul class="media-list">
                                <li class="media media-replied">
                                    <a class="pull-left" href="#">
                                      <img class="media-object img-circle" src="https://s3.amazonaws.com/uifaces/faces/twitter/jackiesaik/128.jpg" alt="profile">
                                    </a>
                                    <div class="media-body">
                                      <div class="well well-lg">
                                          <h4 class="media-heading text-uppercase reviews"><span class="glyphicon glyphicon-share-alt"></span> Lizz</h4>
                                          <ul class="media-date text-uppercase reviews list-inline">
                                            <li class="dd">22</li>
                                            <li class="mm">09</li>
                                            <li class="aaaa">2014</li>
                                          </ul>
                                          <p class="media-comment">
                                            Classy!
                                          </p>
                                          <a class="btn btn-info btn-circle text-uppercase" href="#" id="reply"><span class="glyphicon glyphicon-share-alt"></span> 댓글달기</a>
                                      </div>              
                                    </div>
                                </li>
                            </ul>  
                        </div>
                      </li>
                    </ul> 
                </div>
                <div class="tab-pane" id="add-comment-disabled">
                    <div class="alert alert-info alert-dismissible" role="alert">
                      <button type="button" class="close" data-dismiss="alert">
                        <span aria-hidden="true">×</span><span class="sr-only">Close</span>                        
                      </button>
                      댓글을 남기시려면 <a href="#" class="alert-link">로그인</a> 을하셔야합니다. 계정이 없으신분은 <a href="#" class="alert-link"> 가입하기</a> 를 눌러주세요.
                    </div>
                    <form action="#" method="post" class="form-horizontal" id="commentForm" role="form"> 
                        <div class="form-group">
                            <label for="email" class="col-sm-2 control-label">댓글내용</label>
                            <div class="col-sm-10">
                              <textarea class="form-control" name="addComment" id="addComment" rows="5" disabled></textarea>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">                    
                                <button class="btn btn-success btn-circle text-uppercase disabled" type="submit" id="submitComment"><span class="glyphicon glyphicon-send"></span> 댓글등록</button>
                            </div>
                        </div>            
                    </form>
                </div>
            </div>
        </div>
    </div>
  
  
  --></div>
</div>





			</div>
		</div>
	</div>
</div>