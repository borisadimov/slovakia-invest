class ApplicationController < ActionController::Base
  before_action :fetch_services

  def set_admin_locale
    I18n.locale = :en
  end

  private

  def fetch_services
    @menu_services = Service.includes(:articles).all
  end
end
