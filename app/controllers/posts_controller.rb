class PostsController < ApplicationController
  before_action :require_login

  def index
    @posts = Post.all.sort_by &:created_at
  end

  def show
    @post = Post.find(params[:id])
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
    p "BEING CREATED HERE"
    input = params.require(:post).permit(:message).to_h
    @source = check_against_source(input['message'])
    @post = Post.create(post_params)
    redirect_to posts_url
  end

  private

  def post_params
    params.require(:post).permit(:message).merge(user_id: current_user.id, source_id: @source.id)
  end

  def check_against_source(message)
    links = Source.pluck(:url)
      links.each do |link|
        if message.include?(link)
          return Source.where(url: link)
        end
      end
    end
end
