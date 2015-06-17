<%@ page contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html>
<head>
<!-- head 모듈 -->
	<jsp:include page="menu/module/head.jsp" />
	<link rel="stylesheet" href="/resources/css/videostyle.css">
</head>



  <body id="home">
  <jsp:include page="menu/nav.jsp" />


  	<div class="body">

<!-- 네비게이션  -->
<%-- 상단바 시작 --%>
		
		<%-- 상단바 끝 --%>
<!-- 인트로 회원가입   -->
		<jsp:include page="main/module/intro_regist.jsp" />
      
      
<!-- 나에게 맞는 프로그래밍 언어 찾기  -->      
	<jsp:include page="main/module/matching_info_wrap.jsp" />
      
<div id="wrap">

<!-- 설치법 배우기-->
<div id="one">

	<jsp:include page="main/module/learn_menu_wrap.jsp" />

</div>
<!-- 커뮤니티 현황   -->      
<div id="two">
	<jsp:include page="main/module/community_intro.jsp" />

<!-- 커뮤니티 -->

	<jsp:include page="main/module/community_menu_wrap.jsp" />
	
	<!-- 순위  -->
	<jsp:include page="main/module/ranking.jsp" />
</div>

<!-- 프로젝트 소개 설명배너  -->      
<div id="three">
	<jsp:include page="main/module/project_intro_wrap.jsp" />
    

<!-- 프로젝트 -->
<jsp:include page="main/module/project_menu_wrap.jsp" />



<!-- 사이트맵 -->
	<jsp:include page="main/module/sitemap_wrap.jsp" />

<!-- 푸터 -->
	<jsp:include page="menu/footer.jsp" />
	</div>
	</div>

</div>



<!-- JAVA SCRIPT 모듈 -->

<jsp:include page="menu/module/nav_effect_js.jsp" />
<script src="/resources/js/videoscript.js"></script>
<script>
  $(document).ready(function() {

     HeaderVideo.init({
        container: $('.header-video'),
        header: $('.header-video--media'),
        videoTrigger: $("#video-trigger"),
        autoPlayVideo: false
      });    

  });
</script>
 <script type="text/javascript">
		$( ".survey111" ).click(function() {
			var radioCheckval = $('input:radio[name="programName"]:checked').val();
			/* alert(radioCheckval); */
			/* 1번 -> 14로 이동 */
			if (radioCheckval == 1){	
				/*1번질문 없애기 */
				$('#survey1').removeClass("active");
				$('#survey1').addClass("hidden");
				
				$('#survey14').removeClass("hidden");
				$('#survey14').addClass("active");
			}
			
			/* 1번 -> 2로 이동 */
			else if (radioCheckval == 2){
				/*1번질문 없애기*/
				$('#survey1').removeClass("active");
				$('#survey1').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey2').removeClass("hidden");
				$('#survey2').addClass("active");
			}
			
			/* 1번 -> 14로 이동 */
			else if (radioCheckval == 3){
				/*1번질문 없애기*/ 
				$('#survey1').removeClass("active");
				$('#survey1').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey14').removeClass("hidden");
				$('#survey14').addClass("active");
			}
			
			/* 1번 -> 5로 이동 */
			else if (radioCheckval == 4){
				/*1번질문 없애기*/ 
				$('#survey1').removeClass("active");
				$('#survey1').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey5').removeClass("hidden");
				$('#survey5').addClass("active");
			}
			
			/* 2번 -> 3로 이동 */
			else if (radioCheckval == 5){
				/*1번질문 없애기*/ 
				$('#survey2').removeClass("active");
				$('#survey2').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey3').removeClass("hidden");
				$('#survey3').addClass("active");
			}
			
			/* 2번 -> 10로 이동 */
			else if (radioCheckval == 6){
				/*1번질문 없애기*/
				$('#survey2').removeClass("active");
				$('#survey2').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey10').removeClass("hidden");
				$('#survey10').addClass("active");
			}
			
			/* 3번 -> 4로 이동 */
			else if (radioCheckval == 7){
				/*1번질문 없애기*/ 
				$('#survey3').removeClass("active");
				$('#survey3').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey4').removeClass("hidden");
				$('#survey4').addClass("active");
			}
			
			/* 3번 -> 18로 이동 */
			else if (radioCheckval == 8){
				/*1번질문 없애기*/ 
				$('#survey3').removeClass("active");
				$('#survey3').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey18').removeClass("hidden");
				$('#survey18').addClass("active");
			}
			
			/* 3번 -> 19로 이동 */
			else if (radioCheckval == 9){
				/*1번질문 없애기*/ 
				$('#survey3').removeClass("active");
				$('#survey3').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey19').removeClass("hidden");
				$('#survey19').addClass("active");
			}
			
			/* 3번 -> 9로 이동 */
			else if (radioCheckval == 10){
				/*1번질문 없애기*/ 
				$('#survey3').removeClass("active");
				$('#survey3').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey9').removeClass("hidden");
				$('#survey9').addClass("active");
			}
			
			/* 3번 -> 8로 이동 */
			else if (radioCheckval == 11){
				/*1번질문 없애기*/ 
				$('#survey3').removeClass("active");
				$('#survey3').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey8').removeClass("hidden");
				$('#survey8').addClass("active");
			}
			
			/* 3번 -> 15로 이동 */
			else if (radioCheckval == 12){
				/*1번질문 없애기*/ 
				$('#survey3').removeClass("active");
				$('#survey3').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey15').removeClass("hidden");
				$('#survey15').addClass("active");
			}
			
			/* 4번 -> 14로 이동 */
			else if (radioCheckval == 13){
				/*1번질문 없애기*/ 
				$('#survey4').removeClass("active");
				$('#survey4').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey14').removeClass("hidden");
				$('#survey14').addClass("active");
			}
			
			/* 4번 -> 20로 이동 */
			else if (radioCheckval == 14){
				/*1번질문 없애기*/ 
				$('#survey4').removeClass("active");
				$('#survey4').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey20').removeClass("hidden");
				$('#survey20').addClass("active");
			}
			
			/* 4번 -> 22로 이동 */
			else if (radioCheckval == 15){
				/*1번질문 없애기*/ 
				$('#survey4').removeClass("active");
				$('#survey4').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey22').removeClass("hidden");
				$('#survey22').addClass("active");
			}
			
			/* 5번 -> 10로 이동 */
			else if (radioCheckval == 16){
				/*1번질문 없애기*/ 
				$('#survey5').removeClass("active");
				$('#survey5').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey10').removeClass("hidden");
				$('#survey10').addClass("active");
			}
			
			/* 5번 -> 6로 이동 */
			else if (radioCheckval == 17){
				/*1번질문 없애기*/ 
				$('#survey5').removeClass("active");
				$('#survey5').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey6').removeClass("hidden");
				$('#survey6').addClass("active");
			}
			
			/* 6번 -> 14로 이동 */
			else if (radioCheckval == 18){
				/*1번질문 없애기*/ 
				$('#survey6').removeClass("active");
				$('#survey6').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey14').removeClass("hidden");
				$('#survey14').addClass("active");
			}
			
			/* 6번 -> 7로 이동 */
			else if (radioCheckval == 19){
				/*1번질문 없애기*/ 
				$('#survey6').removeClass("active");
				$('#survey6').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey7').removeClass("hidden");
				$('#survey7').addClass("active");
			}
			
			/* 6번 -> 18로 이동 */
			else if (radioCheckval == 20){
				/*1번질문 없애기*/ 
				$('#survey6').removeClass("active");
				$('#survey6').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey18').removeClass("hidden");
				$('#survey18').addClass("active");
			}
			
			/* 7번 -> 15로 이동 */
			else if (radioCheckval == 21){
				/*1번질문 없애기*/ 
				$('#survey7').removeClass("active");
				$('#survey7').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey15').removeClass("hidden");
				$('#survey15').addClass("active");
			}
			
			/* 7번 -> 16로 이동 */
			else if (radioCheckval == 22){
				/*1번질문 없애기*/ 
				$('#survey7').removeClass("active");
				$('#survey7').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey16').removeClass("hidden");
				$('#survey16').addClass("active");
			}
			
			/* 8번 -> 20로 이동 */
			else if (radioCheckval == 23){
				/*1번질문 없애기*/ 
				$('#survey8').removeClass("active");
				$('#survey8').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey20').removeClass("hidden");
				$('#survey20').addClass("active");
			}
			
			/* 8번 -> 15로 이동 */
			else if (radioCheckval == 24){
				/*1번질문 없애기*/ 
				$('#survey8').removeClass("active");
				$('#survey8').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey15').removeClass("hidden");
				$('#survey15').addClass("active");
			}
			
			/* 9번 -> 22로 이동 */
			else if (radioCheckval == 25){
				/*1번질문 없애기*/ 
				$('#survey9').removeClass("active");
				$('#survey9').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey22').removeClass("hidden");
				$('#survey22').addClass("active");
			}
			
			/* 9번 -> 15로 이동 */
			else if (radioCheckval == 26){
				/*1번질문 없애기*/ 
				$('#survey9').removeClass("active");
				$('#survey9').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey15').removeClass("hidden");
				$('#survey15').addClass("active");
			}
			
			/* 10번 -> 9로 이동 */
			else if (radioCheckval == 27){
				/*1번질문 없애기*/ 
				$('#survey10').removeClass("active");
				$('#survey10').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey9').removeClass("hidden");
				$('#survey9').addClass("active");
			}
			
			/* 10번 -> 8로 이동 */
			else if (radioCheckval == 28){
				/*1번질문 없애기*/ 
				$('#survey10').removeClass("active");
				$('#survey10').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey8').removeClass("hidden");
				$('#survey8').addClass("active");
			}
			
			/* 10번 -> 18로 이동 */
			else if (radioCheckval == 29){
				/*1번질문 없애기*/ 
				$('#survey10').removeClass("active");
				$('#survey10').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey18').removeClass("hidden");
				$('#survey18').addClass("active");
			}
			
			/* 10번 -> 11로 이동 */
			else if (radioCheckval == 30){
				/*1번질문 없애기*/ 
				$('#survey10').removeClass("active");
				$('#survey10').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey11').removeClass("hidden");
				$('#survey11').addClass("active");
			}
			
			/* 11번 -> 19로 이동 */
			else if (radioCheckval == 31){
				/*1번질문 없애기*/ 
				$('#survey11').removeClass("active");
				$('#survey11').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey19').removeClass("hidden");
				$('#survey19').addClass("active");
			}
			
			/* 11번 -> 12로 이동 */
			else if (radioCheckval == 32){
				/*1번질문 없애기*/ 
				$('#survey11').removeClass("active");
				$('#survey11').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey12').removeClass("hidden");
				$('#survey12').addClass("active");
			}
			
			/* 12번 -> 19로 이동 */
			else if (radioCheckval == 33){
				/*1번질문 없애기*/ 
				$('#survey12').removeClass("active");
				$('#survey12').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey19').removeClass("hidden");
				$('#survey19').addClass("active");
			}
			
			/* 12번 -> 13로 이동 */
			else if (radioCheckval == 34){
				/*1번질문 없애기*/ 
				$('#survey12').removeClass("active");
				$('#survey12').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey13').removeClass("hidden");
				$('#survey13').addClass("active");
			}
			
			/* 13번 -> 14로 이동 */
			else if (radioCheckval == 35){
				/*1번질문 없애기*/ 
				$('#survey13').removeClass("active");
				$('#survey13').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey14').removeClass("hidden");
				$('#survey14').addClass("active");
			}
			
			/* 13번 -> 21로 이동 */
			else if (radioCheckval == 36){
				/*1번질문 없애기*/ 
				$('#survey13').removeClass("active");
				$('#survey13').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey21').removeClass("hidden");
				$('#survey21').addClass("active");
			}
			
			/* 13번 -> 17로 이동 */
			else if (radioCheckval == 37){
				/*1번질문 없애기*/ 
				$('#survey13').removeClass("active");
				$('#survey13').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey17').removeClass("hidden");
				$('#survey17').addClass("active");
			}
			
			/* 14번 -> 다음으로 이동 */
			else if (radioCheckval == "PYTHON"){
				/*1번질문 없애기*/ 
				$('#survey14').removeClass("active");
				$('#survey14').addClass("hidden");		
				/*넘어갈질문*/
				$('#step3').removeClass("hidden");
				$('#step3').addClass("active");
				
				$("#step2").hide();
				$("#step3").show();
				$("#next2").removeClass("active");
				$("#next3").addClass("active");
			}
			
			/* 14번 -> 1로 이동 */
			else if (radioCheckval == 39){
				/*1번질문 없애기*/ 
				$('#survey14').removeClass("active");
				$('#survey14').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey1').removeClass("hidden");
				$('#survey1').addClass("active");
			}
			
			/* 15번 -> 다음으로 이동 */
			else if (radioCheckval == "JAVA"){
				/*1번질문 없애기*/ 
				$('#survey15').removeClass("active");
				$('#survey15').addClass("hidden");		
				/*넘어갈질문*/
				$('#step3').removeClass("hidden");
				$('#step3').addClass("active");
				
				$("#step2").hide();
				$("#step3").show();
				$("#next2").removeClass("active");
				$("#next3").addClass("active");
			}
			
			/* 15번 -> 1로 이동 */
			else if (radioCheckval == 41){
				/*1번질문 없애기*/ 
				$('#survey15').removeClass("active");
				$('#survey15').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey1').removeClass("hidden");
				$('#survey1').addClass("active");
			}
			
			/* 16번 -> 다음으로 이동 */
			else if (radioCheckval == 'C'){
				alert(aaaa);
				/*1번질문 없애기*/ 
				$('#survey16').removeClass("active");
				$('#survey16').addClass("hidden");		
				/*넘어갈질문*/
				$('#step3').removeClass("hidden");
				$('#step3').addClass("active");
				
				$("#step2").hide();
				$("#step3").show();
				$("#next2").removeClass("active");
				$("#next3").addClass("active");
			}
			
			/* 16번 -> 1로 이동 */
			else if (radioCheckval == 43){
				/*1번질문 없애기*/ 
				$('#survey16').removeClass("active");
				$('#survey16').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey1').removeClass("hidden");
				$('#survey1').addClass("active");
			}
			
			/* 17번 -> 다음으로로 이동 */
			else if (radioCheckval == "PHP"){
				/*1번질문 없애기*/ 
				$('#survey17').removeClass("active");
				$('#survey17').addClass("hidden");		
				/*넘어갈질문*/
				$('#step3').removeClass("hidden");
				$('#step3').addClass("active");
				
				$("#step2").hide();
				$("#step3").show();
				$("#next2").removeClass("active");
				$("#next3").addClass("active");
			}
			
			/* 17번 -> 1로 이동 */
			else if (radioCheckval == 45){
				/*1번질문 없애기*/ 
				$('#survey17').removeClass("active");
				$('#survey17').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey1').removeClass("hidden");
				$('#survey1').addClass("active");
			}
			
			/* 18번 -> 다음으로로 이동 */
			else if (radioCheckval == "CPP"){
				/*1번질문 없애기*/ 
				$('#survey18').removeClass("active");
				$('#survey18').addClass("hidden");		
				/*넘어갈질문*/
				$('#step3').removeClass("hidden");
				$('#step3').addClass("active");
				
				$("#step2").hide();
				$("#step3").show();
				$("#next2").removeClass("active");
				$("#next3").addClass("active");
			}
			
			/* 18번 -> 1로 이동 */
			else if (radioCheckval == 47){
				/*1번질문 없애기*/ 
				$('#survey18').removeClass("active");
				$('#survey18').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey1').removeClass("hidden");
				$('#survey1').addClass("active");
			}
			
			/* 19번 -> 다음으로로 이동 */
			else if (radioCheckval == "JAVASCRIPT"){
				/*1번질문 없애기*/ 
				$('#survey19').removeClass("active");
				$('#survey19').addClass("hidden");		
				/*넘어갈질문*/
				$('#step3').removeClass("hidden");
				$('#step3').addClass("active");
				
				$("#step2").hide();
				$("#step3").show();
				$("#next2").removeClass("active");
				$("#next3").addClass("active");
			}
			
			/* 19번 -> 1로 이동 */
			else if (radioCheckval == 49){
				/*1번질문 없애기*/ 
				$('#survey19').removeClass("active");
				$('#survey19').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey1').removeClass("hidden");
				$('#survey1').addClass("active");
			}
			
			/* 20번 -> 다음으로 이동 */
			else if (radioCheckval == "Csharp"){
				/*1번질문 없애기*/ 
				$('#survey20').removeClass("active");
				$('#survey20').addClass("hidden");		
				/*넘어갈질문*/
				$('#step3').removeClass("hidden");
				$('#step3').addClass("active");
				
				$("#step2").hide();
				$("#step3").show();
				$("#next2").removeClass("active");
				$("#next3").addClass("active");
			}
			
			/* 20번 -> 1로 이동 */
			else if (radioCheckval == 51){
				/*1번질문 없애기*/ 
				$('#survey20').removeClass("active");
				$('#survey20').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey1').removeClass("hidden");
				$('#survey1').addClass("active");
			}
			
			/* 21번 -> 다음으로 이동 */
			else if (radioCheckval == "RUBY"){
				/*1번질문 없애기*/ 
				$('#survey21').removeClass("active");
				$('#survey21').addClass("hidden");		
				/*넘어갈질문*/
				$('#step3').removeClass("hidden");
				$('#step3').addClass("active");
			}
			
			/* 21번 -> 1로 이동 */
			else if (radioCheckval == 53){
				/*1번질문 없애기*/ 
				$('#survey21').removeClass("active");
				$('#survey21').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey1').removeClass("hidden");
				$('#survey1').addClass("active");
			}
			
			/* 22번 -> 다음으로로 이동 */
			else if (radioCheckval == "OBJECTIVEC"){
				/*1번질문 없애기*/ 
				$('#survey22').removeClass("active");
				$('#survey22').addClass("hidden");		
				/*넘어갈질문*/
				$('#step3').removeClass("hidden");
				$('#step3').addClass("active");
				
				$("#step2").hide();
				$("#step3").show();
				$("#next2").removeClass("active");
				$("#next3").addClass("active");
			}
			
			/* 22번 -> 1로 이동 */
			else if (radioCheckval == 55){
				/*1번질문 없애기*/ 
				$('#survey22').removeClass("active");
				$('#survey22').addClass("hidden");		
				/*넘어갈질문*/
				$('#survey1').removeClass("hidden");
				$('#survey1').addClass("active");
			}
		});
		</script>
				
<script>
$(document).ready(function() {
	 
	  $("#owl-demo").owlCarousel({
	 
	      navigation : true, // Show next and prev buttons
	      slideSpeed : 300,
	      paginationSpeed : 400,
	      singleItem:true
	 
	      // "singleItem:true" is a shortcut for:
	      // items : 1, 
	      // itemsDesktop : false,
	      // itemsDesktopSmall : false,
	      // itemsTablet: false,
	      // itemsMobile : false
	 
	  });
});
</script>

</body>
</html>