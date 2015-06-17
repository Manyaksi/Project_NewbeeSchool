<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="page-inner" style="min-height:1080px !important">
                <div class="profile-cover">
                    <div class="row">
                        <div class="col-md-3 profile-image">
                            <div class="profile-image-container">
                                <img src="/resources/images/minihome/avatar4.png" alt="">
                            </div>
                        </div>
                        <div class="col-md-12 profile-info">
                            <div class=" profile-info-value">
                                <h3>1020</h3>
                                <p>Followers</p>
                            </div>
                            <div class=" profile-info-value">
                                <h3>1780</h3>
                                <p>Friends</p>
                            </div>
                            <div class=" profile-info-value">
                                <h3>260</h3>
                                <p>Photos</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="main-wrapper">
                    <div class="row">
                        <div class="col-md-3 user-profile">
                            <h3 class="text-center">${users.nickname }</h3>
                            <p class="text-center">${users.programName } Programmer</p>
                            <hr>
                            <ul class="list-unstyled text-center">
                                <li><p><i class="fa fa-map-marker m-r-xs"></i>${users.location }</p></li>
                                <li><p><i class="fa fa-envelope m-r-xs"></i><a href="profile.html#">${users.id }</a></p></li>
                            </ul>
                            <hr>
                            <button class="btn btn-primary btn-block"><i class="fa fa-plus m-r-xs"></i>Follow</button>
                        </div>
                        <div class="col-md-6 m-t-lg">
                            <div class="panel panel-white">
                                <div class="panel-body">
                                    <div class="post">
                                    <form method="post" action="/minihome/guestbook">
                                        <textarea class="form-control" placeholder="방명록 내용을 입력하세요." rows="4=6" name="guestContent"></textarea>
                                        <input type="hidden" name="userNo" value="${cookie.loginId.value }">
                                        <input type="hidden" name="guestbookOwner" value="${users.userNo }">
                                        <div class="post-options">
                                            <a href="profile.html#"><i class="icon-camera"></i></a>
                                            <a href="profile.html#"><i class="icon-camcorder"></i></a>
                                            <a href="profile.html#"><i class="icon-music-tone-alt"></i></a>
                                            <a href="profile.html#"><i class="icon-link"></i></a>
                                            <a href="profile.html#"><i class="icon-microphone"></i></a>
                                            <button class="btn btn-default pull-right" type="submit">등록</button>
                                        </div>
                                    </form>
                                    </div>
                                </div>
                            </div>
                            <div class="profile-timeline">
                                <ul class="list-unstyled">
                                <c:forEach var="guestbook" items="${list }">
                                    <li class="timeline-item">
                                        <div class="panel panel-white">
                                        
                                            <div class="panel-body">
                                                <div class="timeline-item-header">
                                                    <img src="/resources/images/minihome/avatar3.png" alt="">
                                                    <p>${guestbook["NICKNAME"] } <span>Posted a Status</span></p>
                                                    <small>${guestbook["WRITE_DATE"] }</small>
                                                </div>
                                                <div class="timeline-item-post">
                                                    <p>${guestbook["GUEST_CONTENT"] }</p>
                                                    <div class="timeline-options">
                                                        <a href="profile.html#"><i class="icon-like"></i> Like (${geustbook["GUEST_LIKE"] })</a>
                                                        <a href="profile.html#"><i class="icon-bubble"></i> Comment (2)</a>
                                                        <a href="profile.html#"><i class="icon-share"></i> Share (3)</a>
                                                    </div>
                                                    <div class="timeline-comment">
                                                        <div class="timeline-comment-header">
                                                            <img src="/resources/images/minihome/avatar5.png" alt="">
                                                            <p>Nick Doe <small>1 hour ago</small></p>
                                                        </div>
                                                        <p class="timeline-comment-text">Nullam quis risus eget urna mollis ornare vel eu leo.</p>
                                                    </div>
                                                    <div class="timeline-comment">
                                                        <div class="timeline-comment-header">
                                                            <img src="/resources/images/minihome/avatar2.png" alt="">
                                                            <p>Sandra Smith <small>3 hours ago</small></p>
                                                        </div>
                                                        <p class="timeline-comment-text">Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
                                                    </div>
                                                    <textarea class="form-control" placeholder="Replay"></textarea>
                                                </div>
                                            </div>
                                           
                                        </div>
                                    </li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 m-t-lg">
                            <div class="panel panel-white">
                                <div class="panel-heading">
                                    <div class="panel-title">Team</div>
                                </div>
                                <div class="panel-body">
                                    <div class="team">
                                        <div class="team-member">
                                           <div class="online on"></div>
                                            <img src="/resources/images/minihome/avatar1.png" alt="">
                                        </div>
                                        <div class="team-member">
                                           <div class="online off"></div>
                                            <img src="/resources/images/minihome/avatar2.png" alt="">
                                        </div>
                                        <div class="team-member">
                                           <div class="online on"></div>
                                            <img src="/resources/images/minihome/avatar3.png" alt="">
                                        </div>
                                        <div class="team-member">
                                           <div class="online on"></div>
                                            <img src="/resources/images/minihome/avatar5.png" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-white">
                                <div class="panel-heading">
                                    <div class="panel-title">Some Info</div>
                                </div>
                                <div class="panel-body">
                                    <p>Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.</p>
                                </div>
                            </div>
                            <div class="panel panel-white">
                                <div class="panel-heading">
                                    <div class="panel-title">Skills</div>
                                </div>
                                <div class="panel-body">
                                <!-- 등급 테이블을 따로 만들어서 c태그를 쓰자. -->
                                    <p>HTML5</p>
                                    <div class="progress progress-xs">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                        </div>
                                    </div>
                                    <p>PHP</p>
                                    <div class="progress progress-xs">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                        </div>
                                    </div>
                                    <p>Javascript</p>
                                    <div class="progress progress-xs">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="page-footer">
                    <p class="no-s">2015 © Modern by Steelcoders.</p>
                </div>
            </div>