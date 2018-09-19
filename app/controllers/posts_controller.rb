class PostsController < ApplicationController
  def index
    @posts = Post.where(category: params[:category])
  end

  def show
    @post = Post.find_by(category: params[:category], slug: params[:slug])
  end
end
