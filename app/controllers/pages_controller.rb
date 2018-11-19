class PagesController < ApplicationController
  def about_us
    @about_us_page = AboutUsPage.instance
  end

  def contacts
    @services = Service.includes(employees: :contacts).all
    @contacts_page = ContactsPage.instance
  end

  def news
    @posts = Post.page(params[:page] || 1).per(3)
    @articles = Article.where.not(post_ids: [])
  end

  def prices
    @services = Service.includes(:prices).all
  end
end
