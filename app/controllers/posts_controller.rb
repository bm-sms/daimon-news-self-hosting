class PostsController < ApplicationController
  # GET /posts
  def index
    @posts = Post.order(:created_at => :desc)
  end

  # GET /posts/1
  def show
    @post = Post.find(params[:id])
  end
end
