var url = window.location.href;

if(url == 'http://192.168.0.11/board/boardlist?program_name=CPP&page=1'){
	$('.board-title').addClass('cpp-bg');
}else if(url == 'http://192.168.0.11/board/boardlist?program_name=java&page=1'){
	$('.board-title').addClass('java-bg');
	$('h1').css('color','black');
	$('p').css('color','darkgray');
	$('button').css('color','darkgray');
	$('span').css('color','darkgray');
}else if(url == 'http://192.168.0.11/board/writearticle?program_name=java'){
	$('.board-title').addClass('java-bg');
	$('h1').css('color','black');
	$('p').css('color','darkgray');
	$('button').css('color','darkgray');
	$('span').css('color','darkgray');
}else if(url == 'http://192.168.0.11/board/boardlist?program_name=Swift&page=1'){
	$('.board-title').addClass('swift-bg');
}else if(url == 'http://192.168.0.11/board/boardlist?program_name=JavaScript&page=1'){
	$('.board-title').addClass('js-bg');
}else if(url == 'http://192.168.0.11/board/boardlist?program_name=Ruby&page=1'){
	$('.board-title').addClass('ruby-bg');
}else if(url == 'http://192.168.0.11/board/boardlist?program_name=Python&page=1'){
	$('.board-title').addClass('python-bg');
}else if(url == 'http://192.168.0.11/board/boardlist?program_name=PHP&page=1'){
	$('.board-title').addClass('php-bg');
}else if(url == 'http://192.168.0.11/board/boardlist?program_name=Csharp&page=1'){
	$('.board-title').addClass('csharp-bg');
}else if(url == 'http://192.168.0.11/board/boardlist?program_name=C&page=1'){
	$('.board-title').addClass('c-bg');
}

$(window).scroll(function() {

	var value = $(this).scrollTop();

	if (value > 70) {

		$('.board-title').addClass('board-title-fixed-navi');

		$('.board-sidebar').addClass('board-fixed-sidebar');

		$('.board-title-sub').hide();

		$('.col-md-10').addClass('col-md-offset-2');
		
		$('#menu').addClass('scroll-menu-func');
		
		$('#write').addClass('scroll-write-func');
		
		$('.search-btn').addClass('scroll-search-func');
		
		$('.board-nav-comp-ul').addClass('scroll-menu-li-func');

	}

	else {

		$('.board-title').removeClass('board-title-fixed-navi');

		$('.board-sidebar').removeClass('board-fixed-sidebar');

		$('.board-title-sub').show();

		$('.col-md-10').removeClass('col-md-offset-2');
		
		$('#menu').removeClass('scroll-menu-func');
		
		$('#write').removeClass('scroll-write-func');
		
		$('.search-btn').removeClass('scroll-search-func');
		
		$('.board-nav-comp-ul').removeClass('scroll-menu-li-func');

	}

});

$(function() {
	// Remove Search if user Resets Form or hits Escape!
	$('body, .navbar-collapse form[role="search"] button[type="reset"]').on(
			'click keyup',
			function(event) {
				console.log(event.currentTarget);
				if (event.which == 27
						&& $('.navbar-collapse form[role="search"]').hasClass(
								'active')
						|| $(event.currentTarget).attr('type') == 'reset') {
					closeSearch();
				}
			});

	function closeSearch() {
		var $form = $('.navbar-collapse form[role="search"].active')
		$form.find('input').val('');
		$form.removeClass('active');
	}

	// Show Search if form is not active // event.preventDefault() is important,
	// this prevents the form from submitting
	$(document)
			.on(
					'click',
					'.navbar-collapse form[role="search"]:not(.active) button[type="submit"]',
					function(event) {
						event.preventDefault();
						var $form = $(this).closest('form'), $input = $form
								.find('input');
						$form.addClass('active');
						$input.focus();

					});
	// ONLY FOR DEMO // Please use $('form').submit(function(event)) to track
	// from submission
	// if your form is ajax remember to call `closeSearch()` to close the search
	// container
	$(document)
			.on(
					'click',
					'.navbar-collapse form[role="search"].active button[type="submit"]',
					function(event) {
						event.preventDefault();
						var $form = $(this).closest('form'), $input = $form
								.find('input');
						$('#showSearchTerm').text($input.val());
						closeSearch()
					});
});

$(document).on(
		'click',
		'#menu',
		function() {
			$('.board-nav').addClass('board-nav-visible')
			$('#menu').addClass('close-menu')
			$('.navbar-collapse form[role="search"] button').addClass(
					'board-nav-hideen');
			$('.placeholder-white').addClass('board-nav-hideen');

		});

$(document).on(
		'click',
		'.close-menu',
		function() {
			$('.board-nav').removeClass('board-nav-visible')
			$('#menu').removeClass('close-menu')
			$('.navbar-collapse form[role="search"] button').removeClass(
					'board-nav-hideen');
			$('.placeholder-white').removeClass('board-nav-hideen');
			$('.navbar-collapse form[role="search"] button[type="reset"]').removeClass('board-nav-hideen');


		});
