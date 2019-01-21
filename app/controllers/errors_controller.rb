class ErrorsController < ApplicationController
  def unauthorized
    set_meta_tags('401')
    render :unauthorized
  end

  def not_found
    set_meta_tags('404')
    render :not_found
  end

  def error
    set_meta_tags('500')
    render :error
  end

  protected

  def the_exception
    @e ||= env["action_dispatch.exception"]
  end

  def set_meta_tags(title)
    @meta_tags = { title: title }
  end
end