source 'https://rubygems.org'

gem 'rails', '3.2.3'
gem 'ruby'
gem 'heroku'
gem 'devise'
gem 'omniauth-facebook', '~> 1.4.1'
gem 'certified'

gem 'thin'

group :production do
	gem 'pg'
end 
group :development, :test do
	gem 'sqlite3'
	# gem 'webrick'
	# gem 'rails-erd'
	# gem 'annotate'
end

gem 'execjs'
# gem 'therubyracer' # only for linux users

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger, should only use in development mode
# place debugger as breakpoint in source code
# $ rails server --debugger
# gem 'debugger', group: [:development, :test]