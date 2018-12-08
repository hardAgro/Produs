# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Produs
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # config.active_record.raise_in_transactional_callbacks = true
    config.assets.initialize_on_precompile = false
    config.time_zone = 'America/Recife'
    config.i18n.enforce_available_locales = false
    config.i18n.available_locales = ['pt-BR']
    config.i18n.load_path += Dir[Rails.root.join('config/locales/**/*.yml').to_s]
    config.i18n.default_locale = :'pt-BR'
    config.encoding = 'utf-8'
  end
end
