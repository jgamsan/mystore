source 'https://rubygems.org'

gem 'rails', '3.1.4'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'
group :production do
  gem 'unicorn'
  gem 'capistrano-unicorn'
  gem 'foreman'
  gem 'therubyracer' #only required for 0.70.x or later
  gem 'execjs'
end
# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'
group :development do
  gem 'capistrano'
end
# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
gem 'spree'
gem 'spree_usa_epay'
gem 'spree_skrill'
gem 'spree_i18n', :git => 'git://github.com/spree/spree_i18n.git'
