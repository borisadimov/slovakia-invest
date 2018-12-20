class CommentsController < ApplicationController
  def create
    Comment.create(comment_params.merge(post_id: params[:post_id]))
    redirect_to post_path(params[:post_id])
  end

  private

  def comment_params
    params.permit(:author, :email, :text)
  end
end
