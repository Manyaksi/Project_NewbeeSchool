<%-- <%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>장소 검색하기</title>
    <style>
      html, body, #map-canvas {
        height: 100%;
        margin: 0px;
        padding: 0px
      }
      #panel {
        position: absolute;
        top: 5px;
        left: 50%;
        margin-left: -180px;
        z-index: 5;
        background-color: #fff;
        padding: 5px;
        border: 1px solid #999;
      }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true"></script>
    <script>
var geocoder;
var map;
var marker;
function initialize() {
  geocoder = new google.maps.Geocoder();
  var latlng = new google.maps.LatLng(37.5640, 126.9751);
  var mapOptions = {
    zoom: 15,
    center: latlng
  }
  map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
  google.maps.event.addListener(map, 'click', function(event) {
		var location = event.latLng;
		geocoder.geocode({
			'latLng' : location
		}, function(results, status){
			if( status == google.maps.GeocoderStatus.OK ) {
				map.setCenter(location);
				marker = new google.maps.Marker({
			          map: map,
			          position: results[0].geometry.location

			      });
				google.maps.event.addListener(marker, 'click', function(){
			    	  alert(results[0].formatted_address);
			  		alert(results[0].geometry.location.lat());
			  		alert(results[0].geometry.location.lng());
				  });
			}
			else {
				alert("Geocoder failed due to: " + status);
			}
		});

	});
}



function codeAddress() {
  var address = document.getElementById('address').value;
  geocoder.geocode( { 'address': address}, function(results, status) {
    if (status == google.maps.GeocoderStatus.OK) {
      map.setCenter(results[0].geometry.location);
      marker = new google.maps.Marker({
          map: map,
          position: results[0].geometry.location

      });
      google.maps.event.addListener(marker, 'click', function(){
    	  alert(results[0].formatted_address);
  		alert(results[0].geometry.location.lat());
  		alert(results[0].geometry.location.lng());
	  });
	    	
    } else {
      alert('검색되지 않는 위치입니다 : ' + status);
    }
  });
}

google.maps.event.addDomListener(window, 'load', initialize);


    </script>
  </head>
  <body>
    <div id="panel">
      <input id="address" type="text" placeholder="서울,가산">
      <input type="button" value="주소 검색하기" onclick="codeAddress()">
    </div>
    <div id="map-canvas"></div>
    <div id="panel">
  
    </div>
  </body>
</html> --%>
<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8" />
<title>무한 스크롤바 구현</title>
<script src="/resources/js/jquery.js"></script>
</head>

<body>

<div data-role="content" id="content_sub">
  <ul class="prd_list" id="list_scroll">
  	
  </ul>
  <div id="loadmoreajaxloader" style="display:none; text-align: center;"><img src="/resources/images/loading.gif"/></div>
</div>

</body>
</html>
