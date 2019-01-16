class ServicesController < ApplicationController
  def show
    @service = Service.friendly.find(params[:id])
    set_meta_tags(@service)

    @more_articles = Article.all.sample(15)
  end
end
