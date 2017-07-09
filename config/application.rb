require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Matopo
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Suppress DEPRECATION WARNING: Time columns will become time zone aware
    # in Rails 5.1. This still causes Strings to be parsed as if they were in
    # Time.zone, and Times to be converted to Time.zone.
    config.active_record.time_zone_aware_types = [:datetime, :time]
  end
end
