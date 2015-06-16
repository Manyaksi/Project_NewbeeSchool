<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta name="viewport" content="initial-scale=1.0, user-scalable=no">

<jsp:include page="menu/module/head.jsp" />
<link href="/resources/css/board.css" rel="stylesheet">
<link href="/resources/css/summernote.css" rel="stylesheet">
<style>


#panel {
  position: absolute;
  bottom: -51px;
  left: 30px;
  /* top: 5px; */
  /* width: 50%; */
  left: 10px;
  /* margin-left: -180px; */
  z-index: 5;
  /* background-color: #fff; */
  padding: 5px;
  /* border: 1px solid #999; */
}
</style>

</head>



<body>
	<jsp:include page="menu/nav.jsp" />
	<jsp:include page="project/project_head.jsp" />


	<div class="container" style="margin-top: 30px; margin-bottom: 150px;">
		<div class="row">

			<jsp:include page="project/project_write_contents.jsp" />


			<div class="space50"></div>
		</div>
	</div>


	<!-- 사이트맵 -->
	<jsp:include page="main/module/sitemap_wrap.jsp" />

	<!-- 푸터 -->
	<jsp:include page="menu/footer.jsp" />
	<!-- JAVA SCRIPT 모듈 -->

	<jsp:include page="menu/module/nav_uneffect_js.jsp" />
	<script type="text/javascript" src="/resources/js/board.js"></script>
	<script src="/resources/js/summernote.min.js"></script>
	
 	<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true"></script>
	<script>

var geocoder;
var map;
var marker;

function initialize() {
	geocoder = new google.maps.Geocoder();
	var latlng = new google.maps.LatLng(37.5640, 126.9751);
	var mapOptions = {
		zoom : 15,
		center : latlng
	}
	map = new google.maps.Map(document.getElementById('map-canvas'),
			mapOptions);
	google.maps.event.addListener(map, 'click', function(event) {
		var location = event.latLng;
		geocoder.geocode({
			'latLng' : location
		}, function(results, status) {
			if (status == google.maps.GeocoderStatus.OK) {
				map.setCenter(location);
				marker = new google.maps.Marker({
					map : map,
					position : results[0].geometry.location

				});
				//마커를 클릭했을때,
				google.maps.event.addListener(marker, 'click',
						function() {
							$('input[name=groupLocation]').val(results[0].formatted_address);
							$('input[name=project-start-date]').val(results[0].formatted_address);
							$('input[name=mapLocation]').val(results[0].formatted_address);
							$('input[name=latitude]').val(results[0].geometry.location.lat());
							$('input[name=longitude]').val(results[0].geometry.location.lng());
							alert($('input[name=groupLocation]').val());
							$('#closeButton').click();
						});
			} else {
				alert("Geocoder failed due to: " + status);
			}
		});

	});
}

function codeAddress() {
	var address = document.getElementById('address').value;
	geocoder.geocode({
		'address' : address
	}, function(results, status) {
		if (status == google.maps.GeocoderStatus.OK) {
			map.setCenter(results[0].geometry.location);
			marker = new google.maps.Marker({
				map : map,
				position : results[0].geometry.location

			});
			//마커를 클릭했을때,
			google.maps.event.addListener(marker, 'click', function() {
				$('input[name=groupLocation]').val(results[0].formatted_address);
				$('input[name=project-start-date]').val(results[0].formatted_address);
				$('input[name=mapLocation]').val(results[0].formatted_address);
				$('input[name=latitude]').val(results[0].geometry.location.lat());
				$('input[name=longitude]').val(results[0].geometry.location.lng());
				alert($('input[name=groupLocation]').val());
				$('#closeButton').click();
				
			});

		} else {
			alert('검색되지 않는 위치입니다 : ' + status);
		}
	});
}

google.maps.event.addDomListener(window, 'load', initialize);

</script>
<script>
	 
	$("input[name=project-start-date]").on('click',function() {
		$('#myModal').on('shown.bs.modal', function () {
			  var currentCenter = map.getCenter();  // Get current center before resizing
			  google.maps.event.trigger(map, "resize");
			  map.setCenter(currentCenter); // Re-set previous center
			  $('#myInput').focus()
			})
		});
		 $("input[name=project-start-date]").on('click',function() {
			 
		 });
		
	$(document).ready(function() {
		$('#summernote').summernote();
	});

	$('#summernote').summernote({
		height : 300, // set editor height

		minHeight : 300, // set minimum height of editor
		maxHeight : 500, // set maximum height of editor

		focus : true, // set focus to editable area after initializing summernote
	});
	
	$('#project-create').click(function(){
		var groupContent = $('.note-editable').html();
		$("input[name=groupContent]").attr("value", groupContent);
		goSubmit();
		return true;
	});

	
	function cancle() {
        self.close();
    }
    function goSubmit() {
    	alert('submit');
        $("#writeForm").submit();
    }
	
</script>
	


	
</body>
</html>