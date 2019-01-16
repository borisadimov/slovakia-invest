class ArticlesController < ApplicationController
  def show
    @article = Article.friendly.find(params[:id])
    set_meta_tags(@article)

    @more_articles = Article.where.not(id: @article.id).sample(15)
  end
end
