require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module OneLastAI
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    
    # Configure for onelastai.com domain
    config.application_name = "OneLastAI"
    
    # Load application configuration
    require_relative 'application_config'
    
    # Configure session store
    config.session_store :cookie_store, 
      key: '_onelastai_session',
      domain: Rails.env.production? ? '.onelastai.com' : nil,
      secure: Rails.env.production?,
      httponly: true,
      same_site: :lax
      
    # Configure CORS for API endpoints
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins 'onelastai.com', 'www.onelastai.com', '*.onelastai.com'
        resource '*',
          headers: :any,
          methods: [:get, :post, :put, :patch, :delete, :options, :head],
          credentials: true
      end
    end
  end
end
