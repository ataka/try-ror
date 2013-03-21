# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Blog::Application.initialize!

# Action Mailer for Yahoo!
Rails::Initializer.run do |config|
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    :address => 'smtp.mail.yahoo.com',
    :port => 587,
    :authentication => :plain,
    :user_name => 'username@yahoo.com',
    :password => 'your_password',
    :enable_starttls_auto => true
  }
end
