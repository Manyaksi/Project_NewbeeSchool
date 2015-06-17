<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!-- 로그아웃 되어있을때 -->
<c:if test="${empty cookie.loginId}" var="varname" scope="request">
<!-- JavaScript Files -->
<script src="/resources/js/jquery.js"></script>
<script src="/resources/js/waypoint.js"></script>
<script src="/resources/js/jquery.counterup.min.js"></script>
<script src="/resources/js/scrollnav.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/jquery.mixitup.min.js"></script>
<script src="/resources/js/owl-carousel/owl.carousel.js"></script>
<script src="/resources/js/rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
<script src="/resources/js/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<script src="/resources/js/rs-plugin/rs.home.js"></script>
<script src="/resources/js/jquery.localscroll-1.2.7-min.js"></script>
<script src="/resources/js/jquery.scrollTo.js"></script>
<script src="/resources/js/animations.js"></script>
<script src="/resources/js/jquery.flexslider.js"></script>
<script src="/resources/js/main.js"></script>
</c:if>

<!-- 로그인되어있을때 -->
<c:if test="${cookie.loginId != null}" var="varname" scope="request">
<!-- JavaScript Files -->
<script src="/resources/js/jquery.js"></script>
<script src="/resources/js/owl.carousel.js"></script>
<script>
$(document).ready(function() {

	 
	  $("#owl-demo").owlCarousel({
	 	 items : 1,
		  navigation : false,
		  pagination: false,
	      slideSpeed : 400,
	      paginationSpeed : 500,
	      singleItem : true,
		autoHeight : true,
	  });
	  
	  
	  $('#learn-tab').click(function(){
		  $("#owl-demo").trigger('owl.goTo', 0)
	  });
	  $('#community-tab').click(function(){
		  $("#owl-demo").trigger('owl.goTo', 1)
	  });
	  $('#project-tab').click(function(){
		  $("#owl-demo").trigger('owl.goTo', 2)
	  });
	
});
</script>
<script src="/resources/js/waypoint.js"></script>
<script src="/resources/js/jquery.counterup.min.js"></script>
<script src="/resources/js/static_nav.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
<script src="/resources/js/jquery.mixitup.min.js"></script>
<script src="/resources/js/rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
<script src="/resources/js/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<script src="/resources/js/rs-plugin/rs.home.js"></script>
<script src="/resources/js/jquery.localscroll-1.2.7-min.js"></script>
<script src="/resources/js/jquery.scrollTo.js"></script>
<script src="/resources/js/jquery.flexslider.js"></script>
<script src="/resources/js/main.js"></script>	

</c:if>
						
						
							
					

						
						