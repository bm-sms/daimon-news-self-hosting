class Admin::PostsController < ApplicationController
  layout 'admin'

  # GET /admin/posts
  def index
    @posts = Post.all
  end

  # GET /admin/posts/1
  def show
    @post = Post.find(params[:id])
  end

  # GET /admin/posts/new
  def new
    @post = Post.new
  end

  # GET /admin/posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /admin/posts
  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to [:admin, @post], notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin/posts/1
  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to [:admin, @post], notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin/posts/1
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to admin_posts_url, notice: 'Post was successfully destroyed.'
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
