class LikesController < ApplicationController

  def create
    @user = current_user.id
    @post = params[:post_id]
    @like = Like.new({user_id: @user, post_id: @post})
    @like.save!
    redirect_to posts_path 
  end
end
