require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PersonalWebsite
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    
    config.action_mailer.smtp_settings = {
      address: ENV["RAILS_SMTP_ADDRESS"],         #smtp server address, e.g. smtp.example.com
      port: ENV["RAILS_SMTP_PORT"],               #smtp server port, e.g. 25
      domain: ENV["RAILS_SMTP_DOMAIN"],           #smtp server HELO domain
      user_name: ENV["RAILS_SMTP_USER_NAME"],     #smtp user name, if authentication is required
      password: ENV["RAILS_SMTP_PASSWORD"],       #smtp password, if authentication is required
      authentication: :login 
    }
  end
end
