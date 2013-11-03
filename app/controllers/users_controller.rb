class UsersController < ApplicationController
	def show
	    @user = User.find(params[:id])
      @albums = @user.albums
      @orphanImages = Array.new
      images = @user.images
      images.each do |image|
        if image.album_id.nil?
          @orphanImages << image
        end
      end
	end

	def following
		@title = "Following"
		@user = User.find(params[:id])
		@users = @user.followed_users
		render 'show_follow'
	end

	def followers
		@title = "Followers"
		@user = User.find(params[:id])
		@users = @user.followers
		render 'show_follow'
	end
end
