class MainController < ApplicationController
  def index
    @landing_page = LandingPage.instance
    set_meta_tags(@landing_page)

    @services = Service.includes(:articles).all
  end
end
