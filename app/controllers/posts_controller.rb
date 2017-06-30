class PostsController < ApplicationController
  before_action :require_login

  def index
    @posts = Post.all.sort_by &:created_at
  end

  def show
    @post = Post.find(params[:id])
    @source = Source.find_by(id: @post.source_id)
  end

  def new
    @post = Post.new
  end

	def edit
		@post = Post.find(params[:id])
		@post.increment!(:likes)
		redirect_to posts_url
	end

  def create
    Post.build(post_params)
    redirect_to posts_url
  end

  private

  def post_params
    params.require(:post).permit(:message).merge(user_id: current_user.id)
  end
end
