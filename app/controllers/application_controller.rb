class ApplicationController < ActionController::Base
  before_action :fetch_services
  before_action :fetch_footer_settings
  before_action :set_user_locale

  def set_admin_locale
    I18n.locale = :en
  end

  def set_meta_tags(resource)
    @meta_tags = {
      title: resource.meta_title,
      description: resource.meta_description,
      keywords: resource.meta_keywords,
      og_title: resource.og_title,
      og_description: resource.og_description,
      og_image: resource.og_image,
      og_url: resource.og_url
    }
  end

  private

  def fetch_services
    @menu_services = Service.includes(:articles).all
  end

  def fetch_footer_settings
    @footer = Footer.instance
  end

  def set_user_locale
    if session[:locale].blank? && request.location.present?
      country_code = request.location.country_code
      case country_code
        when 'RU'
          I18n.locale = :ru
        when 'UA'
          I18n.locale = :uk
        else
          I18n.locale = :en
      end

      session[:locale] = I18n.locale
    else
      I18n.locale = params[:locale] || session[:locale] || I18n.default_locale
      session[:locale] = I18n.locale
    end
  end

  def default_url_options
    { locale: I18n.locale }
  end
end
