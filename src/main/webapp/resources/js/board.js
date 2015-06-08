$(window).scroll(function() {

	var value = $(this).scrollTop();

	if (value > 70) {

		$('.board-title').addClass('board-title-fixed-navi');

		$('.board-sidebar').addClass('board-fixed-sidebar');

		$('.board-title-sub').hide();

		$('.col-md-10').addClass('col-md-offset-2');
		
		$('#menu').addClass('scroll-menu-func');
		
		$('.search-btn').addClass('scroll-search-func');
		
		$('.board-nav-comp-ul').addClass('scroll-menu-li-func');

	}

	else {

		$('.board-title').removeClass('board-title-fixed-navi');

		$('.board-sidebar').removeClass('board-fixed-sidebar');

		$('.board-title-sub').show();

		$('.col-md-10').removeClass('col-md-offset-2');
		
		$('#menu').removeClass('scroll-menu-func');
		
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

		});

$(document).on(
		'click',
		'.close-menu',
		function() {
			$('.board-nav').removeClass('board-nav-visible')
			$('#menu').removeClass('close-menu')
			$('.navbar-collapse form[role="search"] button').removeClass(
					'board-nav-hideen');

		});
