class LikesController < ApplicationController

  def create
    @user = current_user.id
    @post = params[:post_id]

		like_exists = Like.find_by(user_id: @user, post_id: @post)
		if like_exists
			like_exists.destroy
		else
    	@like = Like.new({user_id: @user, post_id: @post})
    	@like.save!
		end
		redirect_to posts_path 
  end
end
