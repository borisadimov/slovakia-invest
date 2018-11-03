class MainController < ApplicationController
  def index
    @landing_page = LandingPage.instance
    @services = Service.includes(:articles).all
  end
end
