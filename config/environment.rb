# Load the Rails application.
require_relative "application"

# Enable render host
Rails.application.config.hosts << "https://ultra-master-dentes-web.onrender.com/"

# Initialize the Rails application.
Rails.application.initialize!
