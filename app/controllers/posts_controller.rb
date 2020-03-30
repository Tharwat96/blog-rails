class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = 1

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(id=params[:id])
  end

  def update
  end

  def delete

  end

  private
  def post_params
    params.permit(:title, :content)
  end
end
