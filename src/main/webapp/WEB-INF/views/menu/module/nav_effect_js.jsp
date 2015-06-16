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
<script src="/resources/js/jquery.touchSwipe.js"></script>
<script src="/resources/js/jquery.horizonScroll.js"></script>
<script type="text/javascript">
    // By default, swipe is enabled.
    $('section').horizon();

    // If you do not want to include another plugin, TouchSwipe, you can set it to false in the default options by passing in the option as false.
    //$('section').horizon({swipe: false});
</script>
<script src="/resources/js/waypoint.js"></script>
<script src="/resources/js/jquery.counterup.min.js"></script>
<script src="/resources/js/static_nav.js"></script>
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


<script>
$('nav').width($('section').width());
$('.learn-menu-wrap').height($('body').height());
$('.portfolio-wrap').height($('body').height());

</script></c:if>
						
						
							
					

						
						