
$.get('resources/html/tutorials_nav.html', function(result) {
	    $('nav').append(result);
	});

$(function(){
	
	$('nav').css("padding-bottom","0px !important");
});