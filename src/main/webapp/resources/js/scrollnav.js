
//============ Fixed header ============//

$(window).scroll( function() {
    var value = $(this).scrollTop();
    if ( value > 50 )
        $(".navbar-default").css("padding", "10px 0px 7px");
    else
        $(".navbar-default").css("padding", "25px 0px 25px");
});


$(window).scroll( function() {
    var value = $(this).scrollTop();
    if ( value > 50 )
        $(".navbar-brand").css("font-size", "45px");
    else
        $(".navbar-brand").css("font-size", "60px");
});


$(window).scroll( function() {
    var value = $(this).scrollTop();
    if ( value > 50 )
        $(".navbar-default").css("background", "white");
    else
        $(".navbar-default").css("background", "transparent");
});


$(window).scroll( function() {
    var value = $(this).scrollTop();
    if ( value > 50 ){
   		$('.navbar-brand').addClass('scroll');
    	$('.navbar-default').addClass('nav-shadow');
    }else {
		$('.navbar-brand').removeClass('scroll');
		$('.navbar-default').removeClass('nav-shadow');
    }

});

$(window).scroll( function() {
    var value = $(this).scrollTop();
    if ( value > 50 )
   		$('.navbar-nav').addClass('scroll');
	else
		$('.navbar-nav').removeClass('scroll');

});
