paginationScroller = ->
  more_listings_url = $('.pagination .next_page a').attr('href')
  
  if more_listings_url && $(window).scrollTop() > $(document).height() - $(window).height() - 60
    $(".loader").show()
    $.getScript more_listings_url, ->
      $(".loader").hide()
  return

jQuery ->
  if $('#infinite-scrolling').size() > 0
    $(window).on 'scroll', _.throttle(paginationScroller, 1500)