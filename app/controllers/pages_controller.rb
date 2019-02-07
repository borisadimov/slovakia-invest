class PagesController < ApplicationController
  def about_us
    @about_us_page = AboutUsPage.instance
    @employees = Employee.all
    set_meta_tags(@about_us_page)
  end

  def contacts
    @services = Service.includes(employees: :contacts).all
    @contacts_page = ContactsPage.instance
    set_meta_tags(@contacts_page)
  end

  def news
    @posts = Post.smart_search(query: params[:query], article_id: params[:article], page: params[:page])
    @articles = Post.related_articles
    @news_page = NewsPage.instance
    set_meta_tags(@news_page)
  end

  def prices
    @services = Service.has_prices.includes(:prices).all
    @prices_page = PricesPage.instance
    set_meta_tags(@prices_page)
  end
end
