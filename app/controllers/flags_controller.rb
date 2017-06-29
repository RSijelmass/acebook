class FlagsController < ApplicationController

  def create
    @user = current_user.id
    @post = params[:post_id]

    flag_exists = Flag.find_by(user_id: @user, post_id: @post)
    if flag_exists
      flag_exists.destroy
    else
      @flag = Flag.new({user_id: @user, post_id: @post})
      @flag.save!
    end
    redirect_to posts_path
  end
end
