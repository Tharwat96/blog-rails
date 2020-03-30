class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:name, :content])
  end

  def edit

  end

  def destroy

  end
end
