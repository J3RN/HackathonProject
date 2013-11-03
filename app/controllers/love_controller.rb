class LoveController < ApplicationController
	def create
		image = Image.find(params[:image_id])
		love = image.loves.build
		love.save!
		redirect_to(images_path)
	end
end
