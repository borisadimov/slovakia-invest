class PagesController < ApplicationController
  def about_us
    @about_us_page = AboutUsPage.instance
  end

  def contacts
    @services = Service.includes(employees: :contacts).all
    @contacts_page = ContactsPage.instance
  end

  def news
    @posts = Post.by_title(params[:title])
    @posts = @posts.by_article(params[:article]) if params[:article].present?
    @posts = @posts.page(params[:page] || 1).per(9)
    @articles = Article.where.not(post_ids: [])
  end

  def prices
    @services = Service.has_prices.includes(:prices).all
  end
end
