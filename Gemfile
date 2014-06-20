source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.0'
# Use sqlite3 as the database for Active Record
group :development do
	gem 'sqlite3'
	gem 'rspec-rails'
	gem 'guard-rspec', '2.5.0'
	gem 'spork-rails', '4.0.0'
	gem 'guard-spork', '1.5.0'
	gem 'childprocess', '0.3.6'
end

group :test do
	gem 'selenium-webdriver', '2.35.1'
	gem 'capybara', '2.2.1'
	gem 'growl', '1.0.3'
	gem 'factory_girl_rails', '4.2.1'
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development
gem 'bootstrap-sass', '2.3.2.0'
gem 'sprockets', '2.11.0'
gem 'bcrypt-ruby', '3.1.5'
gem 'font-awesome-rails'
gem 'devise', '3.2.4'
gem 'simple_form'
#for deployment to heroku, not in production because wanted to test locally first
gem 'foreman', '~> 0.71.0' 
gem 'unicorn', '~> 4.8.3'
#annotate forms
gem 'annotate', '~> 2.6.5'
#send mail
gem 'mail_form', '~> 1.5.0'
#generate pdf
gem 'prawn', '~> 1.0.0' 
#gem 'activeadmin', '~> 0.6.3'

group :production do
	gem 'pg', '0.15.1'
	gem 'rails_12factor', '0.0.2'
end

ruby "2.1.1"
