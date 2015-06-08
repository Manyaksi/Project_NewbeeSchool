<%@ page contentType="text/html; charset=utf-8" %>

        <div class="col-md-12">
       <h2><span class="logo">개발유치원</span>에 가입하세요!</h2> 
        <p>초보개발자들의 놀이터 개발유치원입니다.</p>
        </div>
        
        
        <div class="col-md-12">
        <ol class="steps">
          <li class="current">
            <span class="mega-octicon octicon-person"></span>
            <strong class="step">1단계 :</strong>
            회원정보입력
          </li>
          <li>
            <span class="mega-octicon octicon-versions"></span>
            <strong class="step">2단계 :</strong>
            설문조사
          </li>
          <li>
            <span class="mega-octicon octicon-dashboard"></span>
            <strong class="step">3단계 :</strong>
            이메일 인증
          </li>
        </ol>
        
        </div>
        
        <div class="col-md-4 col-md-offset-1">
            
        <form accept-charset="UTF-8" action="/join" autocomplete="off" class="setup-form js-form-signup-detail" id="signup-form" method="post">
        <div style="margin:0;padding:0;display:inline">
        <input name="utf8" type="hidden" value="✓">
        <input name="authenticity_token" type="hidden" value="WJvna9tCD/deLJJ2/YfjdPlsAPyf3vGLwqAW/DORigRhY6aikgs5NbnGytF72kSiA5Jn/to/oU4uQs855FrJ7w==">
        </div>


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
					<input autocapitalize="off" autofocus="autofocus"
						data-autocheck-url="/signup_check/username" id="user_login"
						name="user[login]" size="30" type="text" value=""
						class="form-control">
				</div>
			</dd>
			<dd class="error">닉네임을 채워주세요</dd>
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
					<input class="form-control" autocapitalize="off"
						data-autocheck-url="/signup_check/email" id="user_email"
						name="user[email]" size="30" type="text">
				</div>
				<p class="note">회신가능한 이메일 주소를 입력해주세요</p>
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
					<input data-autocheck-url="/signup_check/password"
						class="form-control" id="user_password" name="user[password]"
						size="30" type="password">
				</div>
			</dd>
			<dd class="error">패스워드를 입력해주세요 (최소 6자 이상)</dd>
		</dl>

		<dl class="form">
			<dt class="input-label">
				<label for="user_password_confirmation">비밀번호 확인</label>
			</dt>
			<dd>
				<input id="user_password_confirmation"
					name="user[password_confirmation]" size="30" type="password" 
					class="form-control">
			</dd>
		</dl>



		<input type="hidden" name="source_label" value="Detail Form">

   <small>개발유치원에 가입하시면, <a href="/terms">이용약관</a> 과 <a href="/privacy">개인정보보호정책</a> 에 동의하시게 됩니다. </small>
  <div class="space20"></div>
        <div class="form-actions">
    <a class="btn btn-primary" id="signup_button" href="/registeration2" >다음단계로</a>
  </div>
            </form>
            
            
            
       
        </div>
    
<div class="col-md-3 col-md-offset-1">
        <div class="space30"></div>
         <div class="setup-secondary">
      <div class="setup-info-module">
        <h2 class="nanum-gothic"><span class="logo">개발유치원</span>에 가입하시면</h2>
        <ul class="features-list">
          <li><strong>나에게 맞는 개발언어</strong> 찾기</li>
          <li><strong>커뮤니티 활동</strong>을 통한 개발정보공유 </li>


          <li><strong>프로젝트 모집 및 참여</strong></li>
        
        </ul>
      </div>
    </div>
        
        </div>