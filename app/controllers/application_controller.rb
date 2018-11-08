class ApplicationController < ActionController::Base
  before_action :fetch_services
  before_action :fetch_footer_settings

  def set_admin_locale
    I18n.locale = :en
  end

  private

  def fetch_services
    @menu_services = Service.includes(:articles).all
  end

  def fetch_footer_settings
    @footer = Footer.instance
  end
end
