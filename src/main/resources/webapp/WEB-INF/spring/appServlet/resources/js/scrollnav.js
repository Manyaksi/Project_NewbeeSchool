
//============ Fixed header ============//

$(window).scroll( function() {
    var value = $(this).scrollTop();
    if ( value > 200 )
        $(".navbar-default").css("padding", "10px 0px 7px");
    else
        $(".navbar-default").css("padding", "25px 0px 25px");
});


$(window).scroll( function() {
    var value = $(this).scrollTop();
    if ( value > 200 )
        $(".navbar-brand").css("font-size", "35px");
    else
        $(".navbar-brand").css("font-size", "42px");
});


$(window).scroll( function() {
    var value = $(this).scrollTop();
    if ( value > 200 )
        $(".navbar-default").css("background", "#ffffff");
    else
        $(".navbar-default").css("background", "transparent");
});


$(window).scroll( function() {
    var value = $(this).scrollTop();
    if ( value > 200 )
   		$('.navbar-brand').addClass('scroll');
	else
		$('.navbar-brand').removeClass('scroll');

});

$(window).scroll( function() {
    var value = $(this).scrollTop();
    if ( value > 200 )
   		$('.navbar-nav').addClass('scroll');
	else
		$('.navbar-nav').removeClass('scroll');

});
