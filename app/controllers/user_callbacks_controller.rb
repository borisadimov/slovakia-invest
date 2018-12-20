class UserCallbacksController < ApplicationController
  def create
    UserCallback.create(user_callback_params)
    redirect_to root_path
  end

  private

  def user_callback_params
    params.permit(:name, :email, :phone, :source, :text)
  end
end