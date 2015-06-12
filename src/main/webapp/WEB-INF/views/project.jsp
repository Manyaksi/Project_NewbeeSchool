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
var myCenter=new google.maps.LatLng(37.4757379,126.8840176);

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
	//var userno = '${detailList["USER_NO"]}'; // 쿠키로 바꿔야한다.
	var userno = 20; // 쿠키로 바꿔야한다.
	var groupno = '${detailList["GROUP_NO"]}';
	$('.pbutton').hide();
	
	$.ajax({
		type : "get",
		url : "/project/enter_user.do",
		data : "userNo="+ userno + "&groupNo=" + groupno,
           dataType : "html",//text,xml, json
           success : function(result) {
        	   if(result=="owner"){
        		   
        		   $('#buttonBreak').show();
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


</script>
</script>
</body>
</html>
