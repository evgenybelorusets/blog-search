class PostsController < ApplicationController
  def index
    @posts = Post.where(domain: params[:domain])
  end

  def show
    @post = Post.find_by(domain: params[:domain], slug: params[:slug])
  end
end
