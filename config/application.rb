require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module StalkyRails
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    CLIENT_ID = "61B8222CBCB84EAA"
    CLIENT_SECRET = "7929A7C4F79CE489"

    BETA_API_ENDPOINT = "http://api.beta.tagbond.com/oauth"
    API_ENDPOINT = "http://api.tagbond.com/oauth"

    REDIRECT_URI = "http://stalky.herokuapp.com/authorization"
    REDIRECT_URI_IMPLICIT = "http://stalky.herokuapp.com/implicit"

    BETA_API_USER_DETAILS_URL = "http://api.beta.tagbond.com/user/profile"
    API_USER_DETAILS_URL = "http://api.tagbond.com/user/profile"

    BETA_API_COMMUNITY_DETAILS_URL = "http://api.beta.tagbond.com/community/details"
    API_COMMUNITY_DETAILS_URL = "http://api.tagbond.com/community/details"
  end
end
