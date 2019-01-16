class PagesController < ApplicationController
  def about_us
    @about_us_page = AboutUsPage.instance
    set_meta_tags(@about_us_page)
  end

  def contacts
    @services = Service.includes(employees: :contacts).all
    @contacts_page = ContactsPage.instance
    set_meta_tags(@contacts_page)
  end

  def news
    @posts = Post.by_title(params[:title])
    @posts = @posts.by_article(params[:article]) if params[:article].present?
    @posts = @posts.page(params[:page] || 1).per(9)
    @articles = Article.where.not(post_ids: [])
    @news_page = NewsPage.instance
    set_meta_tags(@news_page)
  end

  def prices
    @services = Service.has_prices.includes(:prices).all
    @prices_page = PricesPage.instance
    set_meta_tags(@prices_page)
  end
end
