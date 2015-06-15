<%@ page contentType="text/html; charset=utf-8" %>
	<div class="matching-info-wrap">
		<script type="text/javascript">
		$( ".survey111" ).click(function() {
			var radioCheckval = $('input:radio[name="programName"]:checked').val();
			alert(radioCheckval);
			/* 1번 -> 14로 이동 */
			if (radioCheckval == 1){	
				/*1번질문 없애기 */
				$('#survey1').removeClass('active');
				$('#survey1').addClass('hidden');
				
				$('#survey14').removeClass('hidden');
				$('#survey14').addClass('active');
			}
			
			/* 1번 -> 2로 이동 */
			else if (radioCheckval == 2){
				/*1번질문 없애기*/
				$('#survey1').removeClass('active');
				$('#survey1').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey2').removeClass('hidden');
				$('#survey2').addClass('active');
			}
			
			/* 1번 -> 14로 이동 */
			else if (radioCheckval == 3){
				/*1번질문 없애기*/ 
				$('#survey1').removeClass('active');
				$('#survey1').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey14').removeClass('hidden');
				$('#survey14').addClass('active');
			}
			
			/* 1번 -> 5로 이동 */
			else if (radioCheckval == 4){
				/*1번질문 없애기*/ 
				$('#survey1').removeClass('active');
				$('#survey1').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey5').removeClass('hidden');
				$('#survey5').addClass('active');
			}
			
			/* 2번 -> 3로 이동 */
			else if (radioCheckval == 5){
				/*1번질문 없애기*/ 
				$('#survey2').removeClass('active');
				$('#survey2').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey3').removeClass('hidden');
				$('#survey3').addClass('active');
			}
			
			/* 2번 -> 10로 이동 */
			else if (radioCheckval == 6){
				/*1번질문 없애기*/
				$('#survey2').removeClass('active');
				$('#survey2').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey10').removeClass('hidden');
				$('#survey10').addClass('active');
			}
			
			/* 3번 -> 4로 이동 */
			else if (radioCheckval == 7){
				/*1번질문 없애기*/ 
				$('#survey3').removeClass('active');
				$('#survey3').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey4').removeClass('hidden');
				$('#survey4').addClass('active');
			}
			
			/* 3번 -> 18로 이동 */
			else if (radioCheckval == 8){
				/*1번질문 없애기*/ 
				$('#survey3').removeClass('active');
				$('#survey3').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey18').removeClass('hidden');
				$('#survey18').addClass('active');
			}
			
			/* 3번 -> 19로 이동 */
			else if (radioCheckval == 9){
				/*1번질문 없애기*/ 
				$('#survey3').removeClass('active');
				$('#survey3').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey19').removeClass('hidden');
				$('#survey19').addClass('active');
			}
			
			/* 3번 -> 9로 이동 */
			else if (radioCheckval == 10){
				/*1번질문 없애기*/ 
				$('#survey3').removeClass('active');
				$('#survey3').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey9').removeClass('hidden');
				$('#survey9').addClass('active');
			}
			
			/* 3번 -> 8로 이동 */
			else if (radioCheckval == 11){
				/*1번질문 없애기*/ 
				$('#survey3').removeClass('active');
				$('#survey3').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey8').removeClass('hidden');
				$('#survey8').addClass('active');
			}
			
			/* 3번 -> 15로 이동 */
			else if (radioCheckval == 12){
				/*1번질문 없애기*/ 
				$('#survey3').removeClass('active');
				$('#survey3').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey15').removeClass('hidden');
				$('#survey15').addClass('active');
			}
			
			/* 4번 -> 14로 이동 */
			else if (radioCheckval == 13){
				/*1번질문 없애기*/ 
				$('#survey4').removeClass('active');
				$('#survey4').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey14').removeClass('hidden');
				$('#survey14').addClass('active');
			}
			
			/* 4번 -> 20로 이동 */
			else if (radioCheckval == 14){
				/*1번질문 없애기*/ 
				$('#survey4').removeClass('active');
				$('#survey4').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey20').removeClass('hidden');
				$('#survey20').addClass('active');
			}
			
			/* 4번 -> 22로 이동 */
			else if (radioCheckval == 15){
				/*1번질문 없애기*/ 
				$('#survey4').removeClass('active');
				$('#survey4').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey22').removeClass('hidden');
				$('#survey22').addClass('active');
			}
			
			/* 5번 -> 10로 이동 */
			else if (radioCheckval == 16){
				/*1번질문 없애기*/ 
				$('#survey5').removeClass('active');
				$('#survey5').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey10').removeClass('hidden');
				$('#survey10').addClass('active');
			}
			
			/* 5번 -> 6로 이동 */
			else if (radioCheckval == 17){
				/*1번질문 없애기*/ 
				$('#survey5').removeClass('active');
				$('#survey5').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey6').removeClass('hidden');
				$('#survey6').addClass('active');
			}
			
			/* 6번 -> 14로 이동 */
			else if (radioCheckval == 18){
				/*1번질문 없애기*/ 
				$('#survey6').removeClass('active');
				$('#survey6').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey14').removeClass('hidden');
				$('#survey14').addClass('active');
			}
			
			/* 6번 -> 7로 이동 */
			else if (radioCheckval == 19){
				/*1번질문 없애기*/ 
				$('#survey6').removeClass('active');
				$('#survey6').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey7').removeClass('hidden');
				$('#survey7').addClass('active');
			}
			
			/* 6번 -> 18로 이동 */
			else if (radioCheckval == 20){
				/*1번질문 없애기*/ 
				$('#survey6').removeClass('active');
				$('#survey6').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey18').removeClass('hidden');
				$('#survey18').addClass('active');
			}
			
			/* 7번 -> 15로 이동 */
			else if (radioCheckval == 21){
				/*1번질문 없애기*/ 
				$('#survey7').removeClass('active');
				$('#survey7').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey15').removeClass('hidden');
				$('#survey15').addClass('active');
			}
			
			/* 7번 -> 16로 이동 */
			else if (radioCheckval == 22){
				/*1번질문 없애기*/ 
				$('#survey7').removeClass('active');
				$('#survey7').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey16').removeClass('hidden');
				$('#survey16').addClass('active');
			}
			
			/* 8번 -> 20로 이동 */
			else if (radioCheckval == 23){
				/*1번질문 없애기*/ 
				$('#survey8').removeClass('active');
				$('#survey8').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey20').removeClass('hidden');
				$('#survey20').addClass('active');
			}
			
			/* 8번 -> 15로 이동 */
			else if (radioCheckval == 24){
				/*1번질문 없애기*/ 
				$('#survey8').removeClass('active');
				$('#survey8').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey15').removeClass('hidden');
				$('#survey15').addClass('active');
			}
			
			/* 9번 -> 22로 이동 */
			else if (radioCheckval == 25){
				/*1번질문 없애기*/ 
				$('#survey9').removeClass('active');
				$('#survey9').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey22').removeClass('hidden');
				$('#survey22').addClass('active');
			}
			
			/* 9번 -> 15로 이동 */
			else if (radioCheckval == 26){
				/*1번질문 없애기*/ 
				$('#survey9').removeClass('active');
				$('#survey9').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey15').removeClass('hidden');
				$('#survey15').addClass('active');
			}
			
			/* 10번 -> 9로 이동 */
			else if (radioCheckval == 27){
				/*1번질문 없애기*/ 
				$('#survey10').removeClass('active');
				$('#survey10').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey9').removeClass('hidden');
				$('#survey9').addClass('active');
			}
			
			/* 10번 -> 8로 이동 */
			else if (radioCheckval == 28){
				/*1번질문 없애기*/ 
				$('#survey10').removeClass('active');
				$('#survey10').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey8').removeClass('hidden');
				$('#survey8').addClass('active');
			}
			
			/* 10번 -> 18로 이동 */
			else if (radioCheckval == 29){
				/*1번질문 없애기*/ 
				$('#survey10').removeClass('active');
				$('#survey10').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey18').removeClass('hidden');
				$('#survey18').addClass('active');
			}
			
			/* 10번 -> 11로 이동 */
			else if (radioCheckval == 30){
				/*1번질문 없애기*/ 
				$('#survey10').removeClass('active');
				$('#survey10').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey11').removeClass('hidden');
				$('#survey11').addClass('active');
			}
			
			/* 11번 -> 19로 이동 */
			else if (radioCheckval == 31){
				/*1번질문 없애기*/ 
				$('#survey11').removeClass('active');
				$('#survey11').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey19').removeClass('hidden');
				$('#survey19').addClass('active');
			}
			
			/* 11번 -> 12로 이동 */
			else if (radioCheckval == 32){
				/*1번질문 없애기*/ 
				$('#survey11').removeClass('active');
				$('#survey11').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey12').removeClass('hidden');
				$('#survey12').addClass('active');
			}
			
			/* 12번 -> 19로 이동 */
			else if (radioCheckval == 33){
				/*1번질문 없애기*/ 
				$('#survey12').removeClass('active');
				$('#survey12').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey19').removeClass('hidden');
				$('#survey19').addClass('active');
			}
			
			/* 12번 -> 13로 이동 */
			else if (radioCheckval == 34){
				/*1번질문 없애기*/ 
				$('#survey12').removeClass('active');
				$('#survey12').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey13').removeClass('hidden');
				$('#survey13').addClass('active');
			}
			
			/* 13번 -> 14로 이동 */
			else if (radioCheckval == 35){
				/*1번질문 없애기*/ 
				$('#survey13').removeClass('active');
				$('#survey13').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey14').removeClass('hidden');
				$('#survey14').addClass('active');
			}
			
			/* 13번 -> 21로 이동 */
			else if (radioCheckval == 36){
				/*1번질문 없애기*/ 
				$('#survey13').removeClass('active');
				$('#survey13').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey21').removeClass('hidden');
				$('#survey21').addClass('active');
			}
			
			/* 13번 -> 17로 이동 */
			else if (radioCheckval == 37){
				/*1번질문 없애기*/ 
				$('#survey13').removeClass('active');
				$('#survey13').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey17').removeClass('hidden');
				$('#survey17').addClass('active');
			}
			
			/* 14번 -> 다음으로 이동 */
			else if (radioCheckval == "PYTHON"){
				/*1번질문 없애기*/ 
				$('#survey14').removeClass('active');
				$('#survey14').addClass('hidden');		
				/*넘어갈질문*/
				$('#step3').removeClass('hidden');
				$('#step3').addClass('active');
				
				$("#step2").hide();
				$("#step3").show();
				$("#next2").removeClass("active");
				$("#next3").addClass("active");
			}
			
			/* 14번 -> 1로 이동 */
			else if (radioCheckval == 39){
				/*1번질문 없애기*/ 
				$('#survey14').removeClass('active');
				$('#survey14').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey1').removeClass('hidden');
				$('#survey1').addClass('active');
			}
			
			/* 15번 -> 다음으로 이동 */
			else if (radioCheckval == "JAVA"){
				/*1번질문 없애기*/ 
				$('#survey15').removeClass('active');
				$('#survey15').addClass('hidden');		
				/*넘어갈질문*/
				$('#step3').removeClass('hidden');
				$('#step3').addClass('active');
				
				$("#step2").hide();
				$("#step3").show();
				$("#next2").removeClass("active");
				$("#next3").addClass("active");
			}
			
			/* 15번 -> 1로 이동 */
			else if (radioCheckval == 41){
				/*1번질문 없애기*/ 
				$('#survey15').removeClass('active');
				$('#survey15').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey1').removeClass('hidden');
				$('#survey1').addClass('active');
			}
			
			/* 16번 -> 다음으로 이동 */
			else if (radioCheckval == 'C'){
				alert(aaaa);
				/*1번질문 없애기*/ 
				$('#survey16').removeClass('active');
				$('#survey16').addClass('hidden');		
				/*넘어갈질문*/
				$('#step3').removeClass('hidden');
				$('#step3').addClass('active');
				
				$("#step2").hide();
				$("#step3").show();
				$("#next2").removeClass("active");
				$("#next3").addClass("active");
			}
			
			/* 16번 -> 1로 이동 */
			else if (radioCheckval == 43){
				/*1번질문 없애기*/ 
				$('#survey16').removeClass('active');
				$('#survey16').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey1').removeClass('hidden');
				$('#survey1').addClass('active');
			}
			
			/* 17번 -> 다음으로로 이동 */
			else if (radioCheckval == "PHP"){
				/*1번질문 없애기*/ 
				$('#survey17').removeClass('active');
				$('#survey17').addClass('hidden');		
				/*넘어갈질문*/
				$('#step3').removeClass('hidden');
				$('#step3').addClass('active');
				
				$("#step2").hide();
				$("#step3").show();
				$("#next2").removeClass("active");
				$("#next3").addClass("active");
			}
			
			/* 17번 -> 1로 이동 */
			else if (radioCheckval == 45){
				/*1번질문 없애기*/ 
				$('#survey17').removeClass('active');
				$('#survey17').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey1').removeClass('hidden');
				$('#survey1').addClass('active');
			}
			
			/* 18번 -> 다음으로로 이동 */
			else if (radioCheckval == "CPP"){
				/*1번질문 없애기*/ 
				$('#survey18').removeClass('active');
				$('#survey18').addClass('hidden');		
				/*넘어갈질문*/
				$('#step3').removeClass('hidden');
				$('#step3').addClass('active');
				
				$("#step2").hide();
				$("#step3").show();
				$("#next2").removeClass("active");
				$("#next3").addClass("active");
			}
			
			/* 18번 -> 1로 이동 */
			else if (radioCheckval == 47){
				/*1번질문 없애기*/ 
				$('#survey18').removeClass('active');
				$('#survey18').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey1').removeClass('hidden');
				$('#survey1').addClass('active');
			}
			
			/* 19번 -> 다음으로로 이동 */
			else if (radioCheckval == "JAVASCRIPT"){
				/*1번질문 없애기*/ 
				$('#survey19').removeClass('active');
				$('#survey19').addClass('hidden');		
				/*넘어갈질문*/
				$('#step3').removeClass('hidden');
				$('#step3').addClass('active');
				
				$("#step2").hide();
				$("#step3").show();
				$("#next2").removeClass("active");
				$("#next3").addClass("active");
			}
			
			/* 19번 -> 1로 이동 */
			else if (radioCheckval == 49){
				/*1번질문 없애기*/ 
				$('#survey19').removeClass('active');
				$('#survey19').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey1').removeClass('hidden');
				$('#survey1').addClass('active');
			}
			
			/* 20번 -> 다음으로 이동 */
			else if (radioCheckval == "Csharp"){
				/*1번질문 없애기*/ 
				$('#survey20').removeClass('active');
				$('#survey20').addClass('hidden');		
				/*넘어갈질문*/
				$('#step3').removeClass('hidden');
				$('#step3').addClass('active');
				
				$("#step2").hide();
				$("#step3").show();
				$("#next2").removeClass("active");
				$("#next3").addClass("active");
			}
			
			/* 20번 -> 1로 이동 */
			else if (radioCheckval == 51){
				/*1번질문 없애기*/ 
				$('#survey20').removeClass('active');
				$('#survey20').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey1').removeClass('hidden');
				$('#survey1').addClass('active');
			}
			
			/* 21번 -> 다음으로 이동 */
			else if (radioCheckval == "RUBY"){
				/*1번질문 없애기*/ 
				$('#survey21').removeClass('active');
				$('#survey21').addClass('hidden');		
				/*넘어갈질문*/
				$('#step3').removeClass('hidden');
				$('#step3').addClass('active');
			}
			
			/* 21번 -> 1로 이동 */
			else if (radioCheckval == 53){
				/*1번질문 없애기*/ 
				$('#survey21').removeClass('active');
				$('#survey21').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey1').removeClass('hidden');
				$('#survey1').addClass('active');
			}
			
			/* 22번 -> 다음으로로 이동 */
			else if (radioCheckval == "OBJECTIVEC"){
				/*1번질문 없애기*/ 
				$('#survey22').removeClass('active');
				$('#survey22').addClass('hidden');		
				/*넘어갈질문*/
				$('#step3').removeClass('hidden');
				$('#step3').addClass('active');
				
				$("#step2").hide();
				$("#step3").show();
				$("#next2").removeClass("active");
				$("#next3").addClass("active");
			}
			
			/* 22번 -> 1로 이동 */
			else if (radioCheckval == 55){
				/*1번질문 없애기*/ 
				$('#survey22').removeClass('active');
				$('#survey22').addClass('hidden');		
				/*넘어갈질문*/
				$('#survey1').removeClass('hidden');
				$('#survey1').addClass('active');
			}
		});
		</script>
				
		<div class="container">
			<div class="row">
				<div class="col-md-12 no-padding matching-info-content">
				<div class="form-horizontal active" id="survey1">

					<!-- 질문 제목 -->
					<legend>프로그래밍을 배우고 싶은 이유는 무엇인가요?</legend>

					<!-- 질문 항목 -->
					<div class="form-group">

						<div class="col-md-12">
							<div class="radio">
								<label for="radios-0"> <input type="radio" name="programName" id="radios-0" value="1" checked="checked">
									아이들에게 프로그램을 만들어주고 싶어요
								</label>
							</div>
							<div class="radio">
								<label for="radios-1"> <input type="radio" name="programName" id="radios-1" value="2">
								프로그래밍으로 돈을 많이 벌고 싶어요
								</label>
							</div>
							<div class="radio">
								<label for="radios-2"> <input type="radio" name="programName" id="radios-2" value="3"> 프로그래밍에 흥미가
									생겼어요 취미로도 배우고 싶어요
								</label>
							</div>
							<div class="radio">
								<label for="radios-3"> <input type="radio" name="programName" id="radios-3" value="4"> 잘 모르겠네요
								</label>
							</div>
						</div>
					</div>

					<!-- Button (Double) -->
					<div class="form-group">
						<label class="col-md-12 control-label" for="button1id"></label>
						<div class="col-md-8">
							<a id="survey1pre" name="survey1pre" class="btn btn-default"> 이전 질문</a>
							<a id="survey1next" name="survey1next" class="survey111 btn btn-default">다음 질문</a>
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
									<label for="radios-0"> <input type="radio" name="programName" id="radios-0" value="5" checked="checked">
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
		
		
		
		
		</div>
	
	
		
					</div>
				</div>
			</div>