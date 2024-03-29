require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Slovakia
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.middleware.use Rack::Deflater
    config.assets.paths << "#{Rails.root}/app/assets/videos"
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
    config.i18n.enforce_available_locales = true
    config.i18n.available_locales = [:en, :ru, :uk]
    config.default_locale = :en
    config.exceptions_app = self.routes
  end
end
