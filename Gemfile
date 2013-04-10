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
gem 'annotate'
# gem 'thin'
gem 'gmaps4rails', '~> 1.5.6'
gem 'role_model'
gem 'guard'
gem 'simplecov', :require => false, :group => :test
gem 'rb-readline'
gem 'cancan', '~> 1.6.0'

group :production do
	gem 'pg'
end 
group :development, :test do
	gem 'sqlite3'
	gem 'webrick'
	# gem 'debugger'
end
gem 'execjs'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use Jbuilder templates for JSON
# gem 'jbuilder'
