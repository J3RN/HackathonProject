class VotesController < ApplicationController
	def create
	    image = Image.find(params[:image_id])
	    vote = image.votes.build
	    if (current_user == nil)
	    	redirect_to image_path(image)
	    else
	    	vote.user_id = current_user.id
		    vote.save!
		end
	end
end
