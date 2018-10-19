class PostsController < ApplicationController
  def index
    if params[:search]
      @posts = Post.search(params[:search])
    else
      @posts = Post.where(domain: params[:domain])
    end
  end

  def show
    @post = Post.find_by(domain: params[:domain], slug: params[:slug])
  end
end
