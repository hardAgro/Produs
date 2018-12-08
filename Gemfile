# frozen_string_literal: true

source 'https://rubygems.org'
ruby '2.5.1'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.2'

gem "activestorage", ">= 5.2.1.1"
gem 'rack-cors', '~> 1.0.2', require: 'rack/cors'
# jQuery Select2
gem 'select2-rails', '~> 4.0'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.21'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 4.1'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby
# Use jquery as the JavaScript library
gem 'jquery-rails', '~> 4.3'
# Fonts library
gem "font-awesome-rails"
gem 'material_icons', '~> 2.2'
gem 'fog', require: 'fog/aws'
gem 'mini_magick', '~> 4.8'
# WYSIWYG Editor
gem 'summernote-rails', '0.8.3.0'
# Form
gem 'simple_form', '~> 4.0'
# Authentication
gem 'devise', '~> 4.4'
# Address searching
gem 'brcep', '~> 3.3'
# CPF Validator
gem 'cpf_validator', '~> 0.2'

group :development, :test do
  # https://github.com/flyerhzm/bullet
  gem 'bullet', '~> 5.7.5'
  # https://github.com/rweng/pry-rails
  gem 'pry-rails', '~> 0.3.6'
  # https://github.com/rspec/rspec-rails
  gem 'rspec-rails', '~> 3.6'
  # https://github.com/bbatsov/rubocop
  gem 'rubocop', '~> 0.55'
  # https://github.com/backus/rubocop-rspec
  gem 'rubocop-rspec', '~> 1.17'
  # https://github.com/thoughtbot/factory_bot_rails
  gem 'factory_bot_rails', '~> 4.8'
  # https://github.com/stympy/faker
  gem 'faker', '~> 1.8'
  # https://github.com/bernardo/cpf_faker
  gem 'cpf_faker', '~> 1.3'
  # https://github.com/presidentbeef/brakeman
  gem 'brakeman', '~> 4.2', require: false
  # https://github.com/bkeepers/dotenv
  gem 'dotenv-rails', '~> 2.2'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background.
  # Read more: https://github.com/rails/spring
  # https://github.com/capistrano/capistrano#quick-start
  gem 'capistrano', '3.5', require: false
  # https://github.com/capistrano/rails
  gem 'capistrano-rvm', require: false
  # https://github.com/capistrano/bundler
  gem 'capistrano-rails', require: false
  # https://github.com/ydkn/capistrano-rails-console
  gem 'capistrano-rails-console', require: false
  # https://github.com/capistrano/rvm
  gem 'capistrano-bundler', require: false
  # https://github.com/seuros/capistrano-puma
  gem 'capistrano3-puma', require: false
end

group :test do
  # https://github.com/DatabaseCleaner/database_cleaner
  gem 'database_cleaner', '~> 1.6'
  # https://github.com/thoughtbot/shoulda-matchers
  gem 'shoulda-matchers', '~> 3.1'
  # https://github.com/rails/rails-controller-testing
  gem 'rails-controller-testing', '~> 0.1.1'
end

group :production do
  gem 'rails_12factor'
end
