# Users authentication
#  https://github.com/plataformatec/devise
#   gem 'devise'
#  https://github.com/mkdynamic/omniauth-facebook
#   gem 'omniauth-facebook'
#   gem 'role-model'
#
# Annotate models, tests, routes
#  https://github.com/ctran/annotate_models
#   gem 'annotate'
#
# Google Maps
#  https://github.com/apneadiving/Google-Maps-for-Rails
#   gem 'gmaps4rails'
#
# Code coverage
#  https://github.com/colszowka/simplecov
#   gem 'simplecov'

source 'https://rubygems.org'

gem 'rails', '3.2.3'
gem 'ruby'
gem 'heroku'
gem 'devise', '~> 2.2.3'
gem 'omniauth-facebook', '~> 1.4.1'
gem 'certified'
gem 'gmaps4rails', '~> 1.5.6'
gem 'role_model'
gem 'guard'
gem 'simplecov', :require => false, :group => :test
gem 'rb-readline'
gem 'cancan', '~> 1.6.0'
gem 'rails_admin'

group :production do
  gem 'pg'
  gem 'thin'
end
group :development, :test do
  gem 'sqlite3'
  gem 'webrick'
  gem 'debugger'
  gem 'annotate'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'capybara'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  
  # http://gembundler.com/v1.2/man/gemfile.5.html#PLATFORMS-platforms-
  # $ bundle platform
  # For non-Window users
  unless RUBY_PLATFORM=~ /mingw/
    gem 'execjs'
    gem 'therubyracer'
  end
end

gem 'jquery-rails'
