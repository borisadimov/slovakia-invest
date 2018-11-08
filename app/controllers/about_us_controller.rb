class AboutUsController < ApplicationController
  def index
    @about_us_page = AboutUsPage.instance
  end
end