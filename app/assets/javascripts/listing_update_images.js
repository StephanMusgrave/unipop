$(document).ready(function() {

  $('#listing-picture-field').on('click', '.remove-picture-field-btn', function() {
    $(this).parent().remove();
  });

  var image_fields_count_start = $('#listing-picture-field').children().length + 1;
  $('#add-another-pic').on('click', function() {
    refresh_add_field_btn();
    var field_html = '';
    field_html += '<div class="form-group">';
    field_html += '<label class="primary-color" for="listing_image_containers_attributes_' + image_fields_count_start + '_picture">Extra picture ' + image_fields_count_start + '</label>';
    field_html += '<input class="form-control" id="listing_image_containers_attributes_' + image_fields_count_start + '_picture" name="listing[image_containers_attributes][' + image_fields_count_start + '][picture]" type="file">';
    field_html += '<button class="remove-picture-field-btn btn btn-default btn-sm" type="button"><i class="glyphicon glyphicon-remove"></i> Remove picture</button>';
    field_html += '</div>';
    $('#listing-picture-field').append(field_html);
    image_fields_count_start += 1;
  });
  
  $('#listing-images').on('click', '.remove-listing-image-btn', function() {
    refresh_add_field_btn();
    var image_id = $(this).parent().data('id');
    var listing_id = $(this).closest('form').data('listing-id');
    $.ajax({
      url: '/listings/' + listing_id + '/image_containers/' + image_id,
      method: 'DELETE'
    })
    .done(function(){
      $("#listing-image-"+image_id).remove();
    })
    .fail(function(){
      alert('Failed to delete image!');
    });
  });

  function refresh_add_field_btn() {
    console.log(image_fields_count_start);
    if(image_fields_count_start == 2)
      $("#add-another-pic").hide();
    else {
      $("#add-another-pic").show();
    }
  }
  
});