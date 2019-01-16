class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    set_meta_tags(@post)
  end
end
