// Add TouchSwipe feature to Bootstrap Carousel
$(document).ready(function() {
	$("#listing-carousel.carousel").touchwipe({
		wipeLeft: function() {
			$('#listing-carousel.carousel').carousel('next');
		},
		wipeRight: function() {
			$('#listing-carousel.carousel').carousel('prev');
		},
	});
});