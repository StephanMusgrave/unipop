class ImageContainersController < ApplicationController
  def destroy
  	ImageContainer.find(params['id']).destroy
  	render json: {}
  end
end
