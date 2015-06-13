<%@ page contentType="text/html; charset=utf-8"%>

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

		<!--네비게이션 탭	 -->
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
			<form accept-charset="UTF-8" action="/users/join"
				autocomplete="off" class="setup-form js-form-signup-detail active"
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
										size="30" type="text" value="" class="form-control">

								</div>
							</dd>
							<dd class="error">닉네임을 채워주세요</dd>
							<span id="user_login"></span>
						</dl>

						<dl class="form">
							<dt class="input-label">
								<div class="field-with-errors">
									<label autocapitalize="off"
										data-autocheck-url="/signup_check/email" for="user_email"
										name="user[email]">이메일 주소</label>
								</div>
							</dt>
							<dd>
								<div class="field-with-errors">
									
									<input autocapitalize="off" autofocus="autofocus" id="registemail" name="id"
										size="30" type="text" value="" class="form-control">
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
										type="password">
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
									class="form-control">
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
									<span class="logo">개발유치원</span>에 가입하시면
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
				<div role="tabpanel" class="tab-pane" id="step2"
					style="margin-top: 50px;">

					<!--  왼쪽 화면 col-8짜리 -->
					<div class="col-md-8">


						<!-- 1번질문 -->
						<div class="form-horizontal active" id="survey1">

							<!-- 질문 제목 -->
							<legend>프로그래밍을 배우고 싶은 이유는 무엇인가요?</legend>

							<!-- 질문 항목 -->
							<div class="form-group">

								<div class="col-md-12">
									<div class="radio">
										<label for="radios-0"> <input type="radio"
											name="programName" id="radios-0" value="1" checked="checked">
											아이들에게 프로그램을 만들어주고 싶어요
										</label>
									</div>
									<div class="radio">
										<label for="radios-1"> <input type="radio"
											name="programName" id="radios-1" value="2"> 프로그래밍으로 돈을
											많이 벌고 싶어요
										</label>
									</div>
									<div class="radio">
										<label for="radios-2"> <input type="radio"
											name="programName" id="radios-2" value="3"> 프로그래밍에 흥미가
											생겼어요 취미로도 배우고 싶어요
										</label>
									</div>
									<div class="radio">
										<label for="radios-3"> <input type="radio"
											name="programName" id="radios-3" value="4"> 잘 모르겠네요
										</label>
									</div>
								</div>
							</div>

							<!-- Button (Double) -->
							<div class="form-group">
								<label class="col-md-12 control-label" for="button1id"></label>
								<div class="col-md-8">
									<a id="survey1pre" name="survey1pre" class="btn btn-default">이전
										질문</a> <a id="survey1next" name="survey1next"
										class="survey111 btn btn-default">다음 질문</a>
								</div>
							</div>

						</div>
						<!-- 1번질문 끝-->


						<!-- 2번질문 -->
						<div class="form-horizontal hidden" id="survey2">
							<fieldset>

								<!-- 질문 제목 -->
								<legend>돈을 벌고 싶어?</legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="5" checked="checked">
												직업을 다니면서 돈을 벌고 싶어?
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="6"> 너만의 기발한 생각이
												있어?
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey2pre" name="survey2pre" class="btn btn-default">이전
											질문</a> <a id="survey2next" name="survey2next"
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
								<legend>어느 분야의 회사에 다니고 싶어?</legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="7" checked="checked">
												대기업?
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="8"> 3D/Gaming
												회사?
											</label>
										</div>
										<div class="radio">
											<label for="radios-2"> <input type="radio"
												name="programName" id="radios-2" value="9"> 웹?
											</label>
										</div>
										<div class="radio">
											<label for="radios-3"> <input type="radio"
												name="programName" id="radios-3" value="10"> 모바일?
											</label>
										</div>
										<div class="radio">
											<label for="radios-4"> <input type="radio"
												name="programName" id="radios-4" value="11"> 마이크로소프트?
											</label>
										</div>
										<div class="radio">
											<label for="radios-5"> <input type="radio"
												name="programName" id="radios-5" value="12"> 다 필요없어 무조건
												돈이 짱이쥐!?
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey3pre" name="survey3pre" class="btn btn-default">이전
											질문</a> <a id="survey3next" name="survey3next"
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
								<legend>대기업 어느 회사?</legend>

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
										<a id="survey4pre" name="survey4pre" class="btn btn-default">이전
											질문</a> <a id="survey4next" name="survey4next"
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
								<legend>혹시 기발한 아이디어나 생각한 플랫폼이 있나요?</legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="16" checked="checked">
												응! 기가막힌 아이디어가 있지!
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="17"> 아니! 무조건
												처음이야!
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey5pre" name="survey5pre" class="btn btn-default">이전
											질문</a> <a id="survey5next" name="survey5next"
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
								<legend>당신에게는 배움이 필요하군요!</legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="18" checked="checked">
												우리 쉽게쉽게 갑시다.
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="19"> 조금 어려워도 할
												수 있어!
											</label>
										</div>
										<div class="radio">
											<label for="radios-2"> <input type="radio"
												name="programName" id="radios-2" value="20"> 미래를 위해 머리
												함 쥐터져 볼까!?
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey6pre" name="survey6pre" class="btn btn-default">이전
											질문</a> <a id="survey6next" name="survey6next"
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
								<legend>어떻게 공부해볼까?</legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="21" checked="checked">
												절차적으로?
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="22"> 순차적으로?
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey7pre" name="survey7pre" class="btn btn-default">이전
											질문</a> <a id="survey7next" name="survey7next"
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
								<legend>마이크로소프트 좋아해?</legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="23" checked="checked">
												빌게이츠가 되어보자!
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="24"> 뭐, 그렇저렇...
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey8pre" name="survey8pre" class="btn btn-default">이전
											질문</a> <a id="survey8next" name="survey8next"
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
								<legend>어떤 OS가 더 끌려?</legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="25" checked="checked">
												애플?
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="26"> 안드로이드?
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey9pre" name="survey9pre" class="btn btn-default">이전
											질문</a> <a id="survey9next" name="survey9next"
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
								<legend>어떤 분야로 생각하고 있어?</legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">

											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="27" checked="checked">
												모바일?
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="28"> 마이크로소프트?
											</label>
										</div>
										<div class="radio">
											<label for="radios-2"> <input type="radio"
												name="programName" id="radios-2" value="29"> 3D/Gaming
											</label>
										</div>
										<div class="radio">
											<label for="radios-3"> <input type="radio"
												name="programName" id="radios-3" value="30"> 웹?
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey10pre" name="survey10pre"
											class="btn btn-default">이전 질문</a> <a id="survey10next"
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
								<legend>실시간으로 정보를 제공하는 웹을 만들고 싶나요?</legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">

											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="31" checked="checked">
												네//
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="32"> 아니요!!
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey11pre" name="survey11pre"
											class="btn btn-default">이전 질문</a> <a id="survey11next"
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
								<legend>현재 목표가 큰 기술을 필요로하지만, 혹시 자신이 없나요?</legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="33" checked="checked">
												네//
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="34"> 아니요!!
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey12pre" name="survey12pre"
											class="btn btn-default">이전 질문</a> <a id="survey12next"
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
								<legend>현재 목표가 큰 기술을 필요로하지만, 혹시 자신이 없나요?</legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="35" checked="checked">
												레고!
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="36"> 점토!
											</label>
										</div>

										<div class="radio">
											<label for="radios-2"> <input type="radio"
												name="programName" id="radios-2" value="37"> 좀 더 옛날
												장난감!
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey13pre" name="survey13pre"
											class="btn btn-default">이전 질문</a> <a id="survey13next"
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
								<legend>당신은 PYTHON과 잘 어울리시네요~^^</legend>

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
												언어 선택할래!
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey14pre" name="survey14pre"
											class="btn btn-default">이전 질문</a> <a id="survey14next"
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
								<legend>당신은 java와 잘 어울리시네요~^^</legend>

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
												언어 선택할래!
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey15pre" name="survey15pre"
											class="btn btn-default">이전 질문</a> <a id="survey15next"
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
								<legend>당신은 C와 잘 어울리시네요~^^</legend>

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
												언어 선택할래!
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey16pre" name="survey16pre"
											class="btn btn-default">이전 질문</a> <a id="survey16next"
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
								<legend>당신은 PHP와 잘 어울리시네요~^^</legend>

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
												언어 선택할래!
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey17pre" name="survey17pre"
											class="btn btn-default">이전 질문</a> <a id="survey17next"
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
								<legend>당신은 C++와 잘 어울리시네요~^^</legend>

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
										<a id="survey18pre" name="survey18pre"
											class="btn btn-default">이전 질문</a> <a id="survey18next"
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
								<legend>당신은 JAVA-SCRIPT와 잘 어울리시네요~^^</legend>

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
												언어 선택할래!
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey19pre" name="survey19pre"
											class="btn btn-default">이전 질문</a> <a id="survey19next"
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
								<legend>당신은 C#과 잘 어울리시네요~^^</legend>

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
												언어선택할래!
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey20pre" name="survey20pre"
											class="btn btn-default">이전 질문</a> <a id="survey20next"
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
								<legend>당신은 RUBY와 잘 어울리시네요~^^</legend>

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
												언어 선택할래!
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey21pre" name="survey21pre"
											class="btn btn-default">이전 질문</a> <a id="survey21next"
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
								<legend>당신은 OBJECTIVE-C와 잘 어울리시네요~^^</legend>

								<!-- 질문 항목 -->
								<div class="form-group">

									<div class="col-md-12">
										<div class="radio">
											<label for="radios-0"> <input type="radio"
												name="programName" id="radios-0" value="OBJECTIVEC" checked="checked">
												자~ OBJECTIVE-C 배우러 고고!
											</label>
										</div>
										<div class="radio">
											<label for="radios-1"> <input type="radio"
												name="programName" id="radios-1" value="55"> 아니아니~ 다른
												언어 선택할래!
											</label>
										</div>
									</div>
								</div>

								<!-- Button (Double) -->
								<div class="form-group">
									<label class="col-md-12 control-label" for="button1id"></label>
									<div class="col-md-8">
										<a id="survey22pre" name="survey22pre"
											class="btn btn-default">이전 질문</a> <a id="survey22next"
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
											id="programs-8" type="radio" value="OBJECTIVEC"> OBJECTIVE-C
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
				<div role="tabpanel" class="tab-pane" id="step3">
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