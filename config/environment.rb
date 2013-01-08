# Load the rails application
require File.expand_path('../application', __FILE__)

# add a mime type
Mime::Type.register "text", :txt
# Initialize the rails application
Cif::Application.initialize!
