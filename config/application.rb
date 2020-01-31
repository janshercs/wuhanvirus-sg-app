require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module WuhanvirusSg
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # set timezone to singapore
    config.time_zone = "Singapore"

    # use rack tracker to record analytics
    config.middleware.use(Rack::Tracker) do
      handler :google_analytics, { tracker: ENV['GOOGLE_ANALYTICS_ID'] }
      handler :facebook_pixel, { id: ENV['FACEBOOK_PIXEL_ID'] }
    end
  end
end
