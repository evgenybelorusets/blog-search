class PostsController < ApplicationController
  before_action :check_domain

  def index
    if params[:search]
      @posts = Post.includes(:authors).search(search_tokens)
    else
      @posts = Post.includes(:authors).where(domain: params[:domain])
    end
  end

  def show
    @post = Post.find_by(domain: params[:domain], slug: params[:slug])
  end

  private

  def search_tokens
    params[:search].split(' ')
  end

  def check_domain
    unless Post.for_domain(params[:domain]).exists?
      head :not_found
    end
  end
end
