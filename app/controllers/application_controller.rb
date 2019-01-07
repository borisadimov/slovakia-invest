class ApplicationController < ActionController::Base
  before_action :fetch_services
  before_action :fetch_footer_settings
  before_action :set_user_locale

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

  def set_user_locale
    unless session[:locale_seted]
      country_code = request.location.country_code
      case country_code
        when 'RU'
          I18n.locale = :ru
        when 'UA'
          I18n.locale = :uk
        when 'SK'
          I18n.locale = :sk
        else
          I18n.locale = :en
      end

      session[:locale_seted] = true
    end
  end
end
