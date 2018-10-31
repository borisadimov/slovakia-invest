class PostsController < ApplicationController
  def index
    @posts = Post.page(params[:page] || 1).per(3)
    @articles = Article.where.not(post_ids: [])
  end

  def show
    @post = Post.find(params[:id])
  end
end
