$(".tutorial-nav").addClass("margin-bottom-zero");



$(window).scroll( function() {
	   var value = $(this).scrollTop();
	    if ( value > 50 ){
	    	$('.tutorial-nav').addClass('fixed-navi');
	    	$(".tutorial-sidebar").addClass('fixed-sidebar');
	    }
	    else {
			 $('.tutorial-nav').removeClass('fixed-navi');
			 $(".tutorial-sidebar").removeClass('fixed-sidebar');
		 }
});

