class ServicesController < ApplicationController
  def show
    @service = Service.friendly.find(params[:id])
    @more_articles = Article.all.sample(15)
  end
end
