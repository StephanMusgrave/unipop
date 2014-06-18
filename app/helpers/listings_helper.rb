module ListingsHelper
  def picture_label(imgc)
    index = imgc.options[:child_index] + 1

    label = index == 1 ? "Main picture" : "Picture #{index}"
    imgc.label :picture, label, class: 'primary-color'
  end
end
