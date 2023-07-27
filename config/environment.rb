# Load the Rails application.
require_relative "application"

# Enable render host
Rails.application.config.hosts << "ultra-master-dentes-web.onrender.com"

# Initialize the Rails application.
Rails.application.initialize!
