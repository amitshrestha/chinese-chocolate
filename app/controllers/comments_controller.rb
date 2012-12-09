class CommentsController < ApplicationController
  def index
  end

  def new
  end

  def create
  	@post = Post.find(params[:post_id])
  	@comment = @post.comments.create(params[:comment])
  	if @comment.save!
  	redirect_to post_path(@post)
    else
    render 'new' 
    end
  end

  def show
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end
end
