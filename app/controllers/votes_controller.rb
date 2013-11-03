class VotesController < ApplicationController
	def create
		image = Image.find(params[:image_id])
		if(current_user != nil)
		    vote = image.votes.build
		    vote.save!
		    redirect_to root_url
		else
	    	redirect_to image_path(image)
	    end
	end
end
