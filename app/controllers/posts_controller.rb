class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.title = post_params[:title] if !post_params[:title].nil?
    @post.category = post_params[:category] if !post_params[:category].nil?
    @post.content =  post_params[:content] if !post_params[:content].nil?

    if @post.valid?
      @post.save
      # @post.save
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
