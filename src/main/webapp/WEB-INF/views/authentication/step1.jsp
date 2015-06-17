<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 컨테이너시작 -->
<div class="container">

	<!-- 로우 시작 -->
<div class="row">

	<!-- 12짜리 화면 (full) -->
<div class="col-md-12">
	<h2>
		<span class="logo">개발유치원</span>에 가입하세요!
	</h2>
	<p>초보개발자들의 놀이터 개발유치원입니다.</p>
</div>

<div class="col-md-12">

	<!-- 탭패널 시작 -->
	<div role="tabpanel">

		<!--네비게이션 탭-->
		<ul class="nav nav-tabs" role="tablist">
			<li role="presentation" class="active" id="next1"><a
				href="#step1" aria-controls="step1" role="tab">1단계 회원정보입력</a></li>
			<li role="presentation" id="next2"><a href="#step2"
				aria-controls="step2" role="tab">2단계 설문조사</a></li>
			<li role="presentation" id="next3"><a href="#step3"
				aria-controls="step3" role="tab">3단계 이메일 인증</a></li>
		</ul>
		<!-- 네비게이션 탭 끝 -->

		<!-- 탭 컨텐츠 -->
		<div class="tab-content">
			<form accept-charset="UTF-8" action="/users/join" autocomplete="off" class="setup-form js-form-signup-detail active"
				id="signup-form" method="get">

				<!--  1단계  컨텐츠 -->
				<div role="tabpanel" class="tab-pane active" id="step1">
					<div class="col-md-4 col-md-offset-1">

						<dl class="form errored">
							<dt class="input-label">
								<div class="field-with-errors">
									<label autocapitalize="off" autofocus="autofocus"
										data-autocheck-url="/signup_check/username" for="user_login"
										name="user[login]">닉네임</label>
								</div>
							</dt>
							<dd>
								<div class="field-with-errors">
									<input autocapitalize="off" autofocus="autofocus" id="registnickname" name="nickname"
										size="30" type="text" value="${nickname }" class="form-control">

								</div>
							</dd>
							<dd class="error">닉네임을 채워주세요</dd>
							<span id="user_login"></span>
						</dl>

						<dl class="form">
							<dt class="input-label">
								<div class="field-with-errors">
									<label autocapitalize="off" data-autocheck-url="/signup_check/email" for="user_email"
										name="user[email]">이메일 주소</label>
								</div>
							</dt>
							
							<dd>
								<div class="field-with-errors">
									<c:if test="${loginResult == null}">
									<input autocapitalize="off" autofocus="autofocus" id="registemail" name="id"
										size="30" type="text" value="${email }" class="form-control">
									</c:if>
									<c:if test="${loginResult != null}">
									<input autocapitalize="off" autofocus="autofocus" id="registemail" name="id"
										size="30" type="text" value="${loginResult }" class="form-control">
									</c:if>
								</div>
								<p id="email_auth" class="note">회신가능한 이메일 주소를 입력해주세요</p>
								<span id="user_email"></span>
							</dd>
						</dl>

						<dl class="form errored">
							<dt class="input-label">
								<div class="field-with-errors">
									<label data-autocheck-url="/signup_check/password"
										for="user_password" name="user[password]">비밀번호</label>
								</div>
							</dt>
							<dd>
								<div class="field-with-errors">
									<input class="form-control" id="registpasswd" name="password" size="30"
										type="password" value="${password }">
								</div>
							</dd>
							<dd class="error">패스워드를 입력해주세요 (최소 6자 이상)</dd>
							<span id="user_password"></span>
						</dl>

						<dl class="form">
							<dt class="input-label">
								<label for="user_password_confirmation">비밀번호 확인</label>
							</dt>
							<dd>
								<input id="registrepasswd"
									name="user[password_confirmation]" size="30" type="password"
									class="form-control" value="${password }">
							</dd>
						</dl>

						<input type="hidden" name="source_label" value="Detail Form">

						<small>개발유치원에 가입하시면, <a href="/terms">이용약관</a> 과 <a
							href="/privacy">개인정보보호정책</a> 에 동의하시게 됩니다.
						</small>
						<div class="space20"></div>
						<div class="form-actions">
							<!--a class="btn btn-primary" id="signup_button" href="/registeration2" >다음단계로</a-->
							<a class="btn btn-primary" id="signup_button">다음단계로</a>
						</div>


					</div>

					<div class="col-md-3 col-md-offset-1">
						<div class="space30"></div>
						<div class="setup-secondary">
							<div class="setup-info-module">
								<h2 class="nanum-gothic">
									<span class="logo">개발유치원</span><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;에 가입하시면
								</h2>
								<ul class="features-list">
									<li><strong>나에게 맞는 개발언어</strong> 찾기</li>
									<li><strong>커뮤니티 활동</strong>을 통한 개발정보공유</li>

									<li><strong>프로젝트 모집 및 참여</strong></li>

								</ul>
							</div>
						</div>

					</div>
				</div>
				<!--  1단계  컨텐츠 끝 -->

				<!--  2단계  컨텐츠-->
				<div role="tabpanel" class="tab-pane" id="step2" style="margin-top: 50px;">

					<!--  왼쪽 화면 col-8짜리 -->
					<div class="col-md-8">


						<!-- 1번질문 -->
						<div class="form-horizontal active" id="survey1">

							<!-- 질문 제목 -->
							<legend>프로그래밍을 배우려고하는 목적은 무엇인가요?</legend>

							<!-- 질문 항목 -->
							<div class="form-group">

								<div class="col-md-12">
									<div class="radio">
										<label for="radios-0"> <input type="radio"
											name="programName" id="radios-0" value="1" checked="checked">
											아이들 교육
										</label>
									</div>
									<div class="radio">
										<label for="radios-1"> <input type="radio"
											name="programName" id="radios-1" value="2">
											돈! 벌자!
										</label>
									</div>
									<div class="radio">
										<label for="radios-2"> <input type="radio"
											name="programName" id="radios-2" value="3"> 재미삼아! 관심집중! 자기개발!
										</label>
									</div>
									<div class="radio">
										<label for="radios-3"> <input type="radio"
											name="programName" id="radios-3" value="4"> 아무것도 몰라요 ㅜ.ㅜ 하나 추천해 주세요.
										</label>
									</div>
								</div>
							</div>

							<!-- Button (Double) -->
							<div class="form-group">
								<label class="col-md-12 control-label" for="button1id"></label>
								<div class="col-md-8">
								 <a id="survey1next" name="survey1next"
										class="survey111 btn btn-default">다음 질문</a>
								</div>
							</div>

						</div>
						<!-- 1번질문 끝-->


						<!-- 2번질문 -->
						<div class="form-horizontal hidden" id="survey2">
							<fieldset>

								<!-- 질문 제목 -->
								<legend>돈을 벌고 싶나요?</legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="5" checked="checked">
												취업?
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="6"> 어느 플랫폼 또는 분야?
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey2next" name="survey2next"
											class="survey111 btn btn-default">다음 질문</a>
									</div>
								</div>

							</fieldset>
						</div>
						<!-- 2번질문 끝-->

						<!-- 3번질문 시작 -->
						<div class="form-horizontal hidden" id="survey3">
							<fieldset>

								<!-- 질문 제목 -->
								<legend>어느 플랫폼 또는 분야?</legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="7" checked="checked">
												초일류 기업에서 일하고 싶다...
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="8"> 게임
											</label>
										</div>
										<div class="radio">
											<label for="radios-2"> <input type="radio"
												name="programName" id="radios-2" value="9"> 웹
											</label>
										</div>
										<div class="radio">
											<label for="radios-3"> <input type="radio"
												name="programName" id="radios-3" value="10"> 모바일
											</label>
										</div>
										<div class="radio">
											<label for="radios-4"> <input type="radio"
												name="programName" id="radios-4" value="11"> 마이크로소프트
											</label>
										</div>
										<div class="radio">
											<label for="radios-5"> <input type="radio"
												name="programName" id="radios-5" value="12"> 돈만 벌수 있다면 뭐든 상관 없다$$$
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey3next" name="survey3next"
											class="survey111 btn btn-default">다음 질문</a>
									</div>
								</div>

							</fieldset>
						</div>
						<!-- 3번질문 끝-->

						<!-- 4번질문 시작-->
						<div class="form-horizontal hidden" id="survey4">
							<fieldset>

								<!-- 질문 제목 -->
								<legend>어느 회사인가요?</legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="13" checked="checked">
												페이스북? 구글?
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="14"> 마이크로소프트?
											</label>
										</div>
										<div class="radio">
											<label for="radios-2"> <input type="radio"
												name="programName" id="radios-2" value="15"> 애플?
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										 <a id="survey4next" name="survey4next"
											class="survey111 btn btn-default" onclick="next">다음 질문</a>
									</div>
								</div>

							</fieldset>
						</div>
						<!-- 4번질문 끝-->

						<!-- 5번질문 시작-->
						<div class="form-horizontal hidden" id="survey5">
							<fieldset>

								<!-- 질문 제목 -->
								<legend>튀는 아이디어나 염두에 둔 플랫폼이 있나요?</legend>
								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="16" checked="checked">
												예!
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="17"> 없어요! 하지만 일단 시작해 볼래요.
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										 <a id="survey5next" name="survey5next"
											class="survey111 btn btn-default">다음 질문</a>
									</div>
								</div>

							</fieldset>
						</div>
						<!-- 5번질문 끝-->

						<!-- 6번질문 시작-->
						<div class="form-horizontal hidden" id="survey6">
							<fieldset>

								<!-- 질문 제목 -->
								<legend>새로 배우는 것을 두려워 하지 않습니다.</legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="18" checked="checked">
												가장 쉽고 좋은 방법
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="19">
												약간 더 어려운 방법을 선택
											</label>
										</div>
										<div class="radio">
											<label for="radios-2"> <input type="radio"
												name="programName" id="radios-2" value="20">
												정말 어려운 방법(하지만 장래에 다른 언어에서 쉽게 사용될 듯한)
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										 <a id="survey6next" name="survey6next"
											class="survey111 btn btn-default">다음 질문</a>
									</div>
								</div>

							</fieldset>
						</div>
						<!-- 6번질문 끝-->

						<!-- 7번질문 시작-->
						<div class="form-horizontal hidden" id="survey7">
							<fieldset>

								<!-- 질문 제목 -->
								<legend>자동 또는 수동 차?</legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="21" checked="checked">
												자동
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="22">
												수동
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey7next" name="survey7next"
											class="survey111 btn btn-default">다음 질문</a>
									</div>
								</div>

							</fieldset>
						</div>
						<!-- 7번질문 끝-->

						<!-- 8번질문 시작-->
						<div class="form-horizontal hidden" id="survey8">
							<fieldset>

								<!-- 질문 제목 -->
								<legend>마이크로소프트는 어때요?</legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="23" checked="checked">
												광팬!
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="24"> 싫지 않거나... 정말 싫어함!
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey8next" name="survey8next"
											class="survey111 btn btn-default">다음 질문</a>
									</div>
								</div>

							</fieldset>
						</div>
						<!-- 8번질문 끝-->

						<!-- 9번질문 시작-->
						<div class="form-horizontal hidden" id="survey9">
							<fieldset>

								<!-- 질문 제목 -->
								<legend>OS?</legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="25" checked="checked">
												IOS
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="26">
												Android
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										 <a id="survey9next" name="survey9next"
											class="survey111 btn btn-default">다음 질문</a>
									</div>
								</div>

							</fieldset>
						</div>
						<!-- 9번질문 끝-->

						<!-- 10번질문 시작-->
						<div class="form-horizontal hidden" id="survey10">
							<fieldset>

								<!-- 질문 제목 -->
								<legend>어떤 플랫폼 또는 분야?</legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">

											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="27" checked="checked">
												모바일
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="28"> 마이크로소프트
											</label>
										</div>
										<div class="radio">
											<label for="radios-2"> <input type="radio"
												name="programName" id="radios-2" value="29"> 게임
											</label>
										</div>
										<div class="radio">
											<label for="radios-3"> <input type="radio"
												name="programName" id="radios-3" value="30"> 웹
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										 <a id="survey10next"
											name="survey10next" class="survey111 btn btn-default">다음
											질문</a>
									</div>
								</div>

							</fieldset>
						</div>
						<!-- 10번질문 끝-->

						<!-- 11번질문 시작-->
						<div class="form-horizontal hidden" id="survey11">
							<fieldset>

								<!-- 질문 제목 -->
								<legend>트위터와 가티 실시간 정보를 제공하는 웹 응용프로그램 인가요?</legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">

											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="31" checked="checked">
												예
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="32"> 아니요
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
									 <a id="survey11next"
											name="survey11next" class="survey111 btn btn-default">다음
											질문</a>
									</div>
								</div>

							</fieldset>
						</div>
						<!-- 11번질문 끝-->

						<!-- 12번질문 시작-->
						<div class="form-horizontal hidden" id="survey12">
							<fieldset>

								<!-- 질문 제목 -->
								<legend>큰 가능성은 있지만 성숙되지 않은 새로운 무언가를 원하나요?</legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="33" checked="checked">
												예
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="34"> 글쎄요...
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey12next"
											name="survey12next" class="survey111 btn btn-default">다음
											질문</a>
									</div>
								</div>

							</fieldset>
						</div>
						<!-- 12번질문 끝-->

						<!-- 13번질문 시작-->
						<div class="form-horizontal hidden" id="survey13">
							<fieldset>

								<!-- 질문 제목 -->
								<legend>가장 좋아하는 장난감은?</legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="35" checked="checked">
												Lego
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="36"> Play-Doh
											</label>
										</div>

										<div class="radio">
											<label for="radios-2"> <input type="radio"
												name="programName" id="radios-2" value="37">
												구식 장난감이지만 너무 좋아하는 경우
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey13next"
											name="survey13next" class="survey111 btn btn-default">다음
											질문</a>
									</div>
								</div>

							</fieldset>
						</div>
						<!-- 13번질문 끝-->

						<!-- python 시작-->
						<div class="form-horizontal hidden" id="survey14">
							<fieldset>

								<!-- 질문 제목 -->
								<legend> PYTHON <br/> 초보자에게 최적의 프로그래밍 언어로 인식 <br/> 배우기 가장 쉬움 <br/> 인공지능을 포함하여 과학계 학계 등에서 광벙위하게 사용 <br/> 쟁고 등과 같은 파이썬 웹 프레인워크를 이용하여 웹사이트를 생성<br/></legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios14-0" value="PYTHON" checked="checked">
												자~ PYTHON을 배우러 고고!
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios14-1" value="39"> 아니아니~ 다른
												언어 선택할래요!
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey14next"
											name="surveynext" class="survey111 btn btn-default">다음
											질문</a>
									</div>
								</div>

							</fieldset>
						</div>
						<!-- python 끝 -->

						<!-- java 시작 -->
						<div class="form-horizontal hidden" id="survey15">
							<fieldset>

								<!-- 질문 제목 -->
								<legend>JAVA<br/>이식성의 이유로 모든 플랫폼, OS나 기기등에서 매우 유명<br/> 요구하는 곳이 다양하고 몸값이 좋은 프로그래밍 언어 중에 하나 <br/>슬로건 : 한번코딩, 모든 곳에서 사용<br/></legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="JAVA" checked="checked">
												자~ JAVA 배우러 고고!
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="41"> 아니아니~ 다른
												언어 선택할래요!
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey15next"
											name="surveynext" class="survey111 btn btn-default">다음
											질문</a>
									</div>
								</div>

							</fieldset>
						</div>
						<!-- java 끝 -->

						<!-- C 시작-->
						<div class="form-horizontal hidden" id="survey16">
							<fieldset>

								<!-- 질문 제목 -->
								<legend>C<br/> 세상에서 가장 오래되고 많이 사용되는 언어 중에 하나<br/> 시스템 및 하드웨어 프로그래밍에 사용되는 유명한 언어<br/> 작은 차이를 제외하고 C++의 부분집합.<br/></legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="C" checked="checked">
												자~ C 배우러 고고!
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="43"> 아니아니~ 다른
												언어 선택할래요!
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey16next"
											name="surveynext" class="survey111 btn btn-default">다음
											질문</a>
									</div>
								</div>

							</fieldset>
						</div>
						<!-- C 끝 -->

						<!-- PHP 시작-->
						<div class="form-horizontal hidden" id="survey17">
							<fieldset>

								<!-- 질문 제목 -->
								<legend>PHP<br/>작고 간단한 웹사이트를 구축하는데 적합<br/>적은 금액으로 거의 모든 웹 호스팅 서비스 업체가 제공<br/></legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="PHP" checked="checked">
												자~ PHP 배우러 고고!
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="45"> 아니아니~ 다른
												언어 선택할래요!
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey17next"
											name="surveynext" class="survey111 btn btn-default">다음
											질문</a>
									</div>
								</div>

							</fieldset>
						</div>

						<!-- PHP 끝 -->

						<!-- C++ 시작-->
						<div class="form-horizontal hidden" id="survey18">
							<fieldset>

								<!-- 질문 제목 -->
								<legend>C++<br/> C에 많은 기능이 추가된 복잡한 확장 버전 <br/>게임, 산업 등의 성능 우선의 응용프로그램을 개발하는데에 광범위하게 이용됨<br/> C++을 제대로 배우는 것은 차의 부품을 생산하여 조립하고 운전하는 것과 동일<br/>가이드해줄 멘토가 있을 경우에만 배우기를 추천<br/></legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="CPP" checked="checked">
												자~ C++ 배우러 고고!
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="47"> 아니아니~ 다른
												언어 선택할래!
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey18next"
											name="surveynext" class="survey111 btn btn-default">다음
											질문</a>
									</div>
								</div>

							</fieldset>
						</div>

						<!-- C++ 끝 -->

						<!-- JAVA-SCRIPT 시작-->
						<div class="form-horizontal hidden" id="survey19">
							<fieldset>

								<!-- 질문 제목 -->
								<legend>JAVA-SCRIPT<br/>JAVA와 JAVASCRIPT가 다른 것은 카(자동차)와 카펫이 서로 다른 것과 동일<br/>가장 유명한 클라이언트-사이드 웹 스크립팅 언어<br/>(HTML, CSS를 포함하여) 프런트-엔드 웹 개발자가 반드시 알아야 할 언어<br/>node.js의 서버-사이드 언어로 그 유명세가 더해짐에 따라 현재 가장 뜨거운 프로그래밍 언어 중에 하나<br/></legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="JAVASCPRIT" checked="checked">
												자~ JAVA-SCRIPT 배우러 고고!
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="49"> 아니아니~ 다른
												언어 선택할래요!
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey19next"
											name="surveynext" class="survey111 btn btn-default">다음
											질문</a>
									</div>
								</div>

							</fieldset>
						</div>

						<!-- JAVA-SCRIPT 끝 -->

						<!-- C# 시작-->
						<div class="form-horizontal hidden" id="survey20">
							<fieldset>

								<!-- 질문 제목 -->
								<legend>C#<br/>.NET 프레임워크를 이용한 윈도우 프로그램이나 웹사이트를 생성하는데 많이 이용<br/>마이크로소프트의 웹 프레인워크인 ASP.NET으로 웹사이트 구축<br/>기본 문법과 몇몇 특징이 JAVA와 유사함<br/>JAVA 대신 윈도우 플랫폼에만 동작하도록 할 때 C# 배우기를 권함<br/></legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="Csharp" checked="checked">
												자~ C# 배우러 고고!
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="51"> 아니아니~ 다른
												언어선택할래요!
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey20next"
											name="surveynext" class="survey111 btn btn-default">다음
											질문</a>
									</div>
								</div>

							</fieldset>
						</div>

						<!-- C# 끝 -->

						<!-- RUBY 시작-->
						<div class="form-horizontal hidden" id="survey21">
							<fieldset>

								<!-- 질문 제목 -->
								<legend>RUBY<br/>RoR(Ruby on Rails)라는 프레임워크 때문에 잘 알려져 있음<br/>일이 되게끔 하는데 촛점<br/>재미 혹은 생산적인 코딩을 하도록 설계<br/>개인 프로젝트, 스타트업, 빠른 개발에 적합<br/></legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="RUBY" checked="checked">
												자~ RUBY 배우러 고고!
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="53"> 아니아니~ 다른
												언어 선택할래요!
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey21next"
											name="surveynext" class="survey111 btn btn-default">다음
											질문</a>
									</div>
								</div>

							</fieldset>
						</div>

						<!-- RUBY 끝 -->

						<!-- OBJECTIVE-C 시작-->
						<div class="form-horizontal hidden" id="survey22">
							<fieldset>

								<!-- 질문 제목 -->
								<legend>SWIFT<br/>애플의 Mac OS X과 iOS를 위한 사용되는 주요 언어<br/>iOS 또는 OS X 응용프로그램만을 개발한다면 이 언어에 집중할 필요<br/> C++을 제대로 배우는 것은 차의 부품을 생산하여 조립하고 운전하는 것과 동일<br/>가이드해줄 멘토가 있을 경우에만 배우기를 추천<br/></legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="OBJECTIVEC" checked="checked">
												자~ SWIFT 배우러 고고!
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="55"> 아니아니~ 다른
												언어 선택할래요!
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey22next"
											name="surveynext" class="survey111 btn btn-default">다음
											질문</a>
									</div>
								</div>

							</fieldset>
						</div>

						<!-- OBJECTIVE-C 끝 -->


						<!-- 질문 끝 -->

					</div>
					<!--  왼쪽 화면 col-8짜리  끝-->

					<!--  오른쪽 화면 col-4짜리 -->
					<div class="col-md-4">

							<!-- Form Name -->

							<!-- Multiple Radios -->
							<div class="form-group">
								<label class="col-md-12 control-label text-left"
									for="programs">생각하신 프로그램이 있으십니까?</label>
								<div class="space30"></div>
								<div class="col-md-12">
									<div class="radio">
										<label for="programs-0"> <input name="programName"
											id="programs-0" type="radio" checked="checked" value="PHYTHON">
											PYTHON
										</label>
									</div>
									<div class="radio">
										<label for="programs-1"> <input name="programName"
											id="programs-1" type="radio" value="C"> C
										</label>
									</div>
									<div class="radio">
										<label for="programs-2"> <input name="programName"
											id="programs-2" type="radio" value="Csharp"> C#
										</label>
									</div>
									<div class="radio">
										<label for="programs-3"> <input name="programName"
											id="programs-3" type="radio" value="JAVA"> JAVA
										</label>
									</div>
									<div class="radio">
										<label for="programs-4"> <input name="programName"
											id="programs-4" type="radio" value="PHP"> PHP
										</label>
									</div>
									<div class="radio">
										<label for="programs-5"> <input name="programName"
											id="programs-5" type="radio" value="CPP"> C++
										</label>
									</div>
									<div class="radio">
										<label for="programs-6"> <input name="programName"
											id="programs-6" type="radio" value="JAVASCRIPT"> JAVA-SCRIPT
										</label>
									</div>
									<div class="radio">
										<label for="programs-7"> <input name="programName"
											id="programs-7" type="radio" value="RUBY"> RUBY
										</label>
									</div>
									<div class="radio">
										<label for="programs-8"> <input name="programName"
											id="programs-8" type="radio" value="OBJECTIVEC"> SWIFT
										</label>


									</div>
								</div>
							</div>



							<!-- Button -->
							<div class="form-group">
								<label class="col-md-4 control-label" for="singlebutton"></label>
								<div class="col-md-4">
									<a id="survey22next" name="surveynext" class="survey111 btn btn-default">확인</a>
								</div>
							</div>



					</div>
					<!--  오른쪽 화면 col-4짜리  끝-->

				</div>
				<!-- 2단계 컨텐츠 끝 -->

				<!--  3단계  컨텐츠-->
				<div role="tabpanel" class="tab-pane" id="step3" style="margin-top: 50px;">
					<span> 이메일 확인 부탁욤</span>
					<button type="submit">회원가입 완료하기</button>
				</div>
				<!--  3단계 컨텐츠 끝 -->

				<!-- 탭 컨텐츠 끝 -->
			</form>
		</div>
		<!--  탭패널끝 -->

	</div>
	<!--12짜리 화면 (full) 끝  -->
</div>

<!-- 로우 끝 -->
</div>

<!-- 컨테이너 끝-->
</div>