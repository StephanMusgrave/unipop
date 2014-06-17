jQuery(function() {
  if ($('#infinite-scrolling').size() > 0) {
    $(window).on('scroll', function() {
      var more_listings_url;
      return more_listings_url = $('.pagination .next_page a').attr('href');
    });
    if (more_listings_url && $(window).scrollTop() > $(document).height() - $(window).height() - 60) {
      $('.pagination').html('<img src="/assets/ajax-loader.gif" alt="Loading..." title="Loading..." />');
    }
    return $.getScript(more_listings_url);
  }
});