source :rubygems

# Project requirements
gem 'rake'
gem 'rack', ">= 1.0.0"
#gem 'rack-flash'

# Padrino
#gem 'padrino', "0.9.23"
#gem 'padrino-admin', "0.9.23"
#gem 'padrino-mailer', "0.9.23"
#gem 'padrino-cache', "0.9.23"

gem 'padrino-core', "0.9.23"
gem 'padrino-helpers', "0.9.23"

# Component requirements
gem 'haml'
gem 'compass'


# Development requirements
group :development do
  #gem 'padrino-gen', "0.9.23" # uncomment if you want padrino generators when in development
  gem 'thin' # or mongrel
end

# Test requirements
group :test, :development do
  gem 'rspec'
  gem 'rack-test', :require => "rack/test"
end
