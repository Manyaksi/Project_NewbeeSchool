<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<jsp:include page="menu/module/head.jsp" />


  </head>



<body>
		<jsp:include page="menu/nav.jsp" />
		<jsp:include page="project/project_head.jsp" />
		<jsp:include page="project/project_title.jsp" />
				
		
		
		
<jsp:include page="project/project_contents.jsp" />



<!-- 사이트맵 -->
	<jsp:include page="main/module/sitemap_wrap.jsp" />

<!-- 푸터 -->
	<jsp:include page="menu/footer.jsp" />
<!-- JAVA SCRIPT 모듈 -->
      


<!-- JAVA SCRIPT 모듈 -->

<jsp:include page="menu/module/nav_uneffect_js.jsp" />
<script
src="http://maps.googleapis.com/maps/api/js">
</script>
<script>
var myCenter=new google.maps.LatLng('${detailList["LATITUDE"]}','${detailList["LONGITUDE"]}');

function initialize()
{
var mapProp = {
  center: myCenter,
  zoom:15,
  mapTypeId: google.maps.MapTypeId.ROADMAP
  };

var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker = new google.maps.Marker({
  position: myCenter,
  title:'Click to zoom'
  });

marker.setMap(map);

// Zoom to 9 when clicking on marker
google.maps.event.addListener(marker,'click',function() {
  map.setZoom(17);
  map.setCenter(marker.getPosition());
  });
}
google.maps.event.addDomListener(window, 'load', initialize);


$("#addComment").keyup(function() {
	var data = $("#addComment").val();

	if (data.length > 200) {
		alert("200글자 이하로 입력해주세요 고객님");
	}

	$("#message").html(data.length + " / 200");

});


$(function() {

	//그냥 처음에 ajax 갔다오기
	var userno = '${detailList["USER_NO"]}'; // 쿠키로 바꿔야한다.
	//var userno = 20; // 쿠키로 바꿔야한다.
	var groupno = '${detailList["GROUP_NO"]}';
	$('.pbutton').hide();
	
	$.ajax({
		type : "get",
		url : "/project/enter_user.do",
		data : "userNo="+ userno + "&groupNo=" + groupno,
           dataType : "html",//text,xml, json
           success : function(result) {
        	   alert(result);
        	   if(result=="owner"){
        		  
        		   $('#buttonBreak').show();
        		   $('#buttonPass').show();
        	   }else if(result=="member"){
        		   
        		   $('#buttonExit').show();
        	   }else if(result=="notting"){
        		   $('#buttonEnter').show();
        	   }
           }
		});
	
	
	$.ajax({
		type : "get",
		url : "/project/groupcount.do",
		data : "&groupNo=" + groupno,
           dataType : "html",//text,xml, json
           success : function(outcome) {
        	   alert(outcome);
        	   if(outcome == "false"){
        	  		$("#buttonEnter").attr('disabled', true);
        	   }else{
        		   $("#buttonEnter").attr('disabled', false);
        	   }
           }
		});
 
 

});

function validateCheck_review() {

	var reviewcontentForm = $("#reviewcontent");
	if ((reviewcontentForm.val()).length == 0) {
		alert("내용을 입력하세요");
		reviewcontentForm.focus();
		return false;
	}
}


</script>
<script>
var listpagesize = 5;
var list_start = 1; //
var list_total_count;
var groupno = '${detailList["GROUP_NO"]}';
 
// 스크롤시 화면의 높이를 계산 (제일 밑에까지 스크롤 했는지 체크)
function element_in_scroll(elem) {
	var docViewTop = $(window).scrollTop();
	var docViewBottom = docViewTop + $(window).height();
	var elemTop = $(elem).offset().top;
	var elemBottom = elemTop + $(elem).height()  - 100;
	return ((elemBottom <= docViewBottom) && (elemTop >= docViewTop));
}
  
// 스크롤 이벤트
  $(document).scroll(function(e) {
      if($(".prd_list li:last").length > 0){
    if (element_in_scroll(".prd_list li:last")) {
     $('div#loadmoreajaxloader').show();
      // 너무 훽~ 로딩되는게 싫어서...
      //setTimeout(fnList, 500);
     }
   }
  });
  
// 리스트에 아이템 추가
  function fnList(){
   $.ajax({
    type : "POST",
    url : '/project/scroll.do',
    data : { group_ID : groupno ,start : list_start, pagesize : listpagesize, cnt : list_total_count }
   }).done(function(msg) {
    var html = fnMakeListHtml(msg.list);                
    $(html).appendTo("#list_scroll").trigger('create');
    
    list_start = list_start + listpagesize;
    
    // 전체 아이템 갯수 설정
    if(list_total_count == null){
     list_total_count = parseInt(msg.cnt.total_count); 
    }
    // 마지막 목록까지 가져왔을경우 더이상 스크롤안되게    
    if( list_total_count < list_start){
     $(document).unbind('scroll');
    }
   
    $('div#loadmoreajaxloader').hide();
    
   });
  }
 
// html 생성
 function fnMakeListHtml(obj)
  {
     var html = 'obj로 html 생성';
      return html;
  }
 
</script>

</body>
</html>
