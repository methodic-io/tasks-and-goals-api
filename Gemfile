# encoding: utf-8
# frozen_string_literal: true

source 'https://rubygems.org'
ruby '2.3.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'.
gem 'rails', '5.0'
# Use sqlite3 as the database for Active Record.
gem 'sqlite3'
# Use SCSS for stylesheets.
gem 'sass-rails', '~> 5.0'
# Use Haml for views.
gem 'haml-rails', '~> 0.9'
# Use Uglifier as compressor for JavaScript assets.
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views.
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes.
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library.
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster.
# Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use Resque to handle background jobs
gem 'resque'
# Use Resque-Scheduler to schedule those jobs
gem 'resque-scheduler'

# Use ActiveModel has_secure_password.
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server.
# gem 'unicorn'

# Use Capistrano for deployment.
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a
  # debugger console.
  gem 'byebug'

  # Checks for security advisories in the gems we use.
  gem 'bundler-audit', require: false

  # Use Rspec for testing.
  gem 'rspec-rails'
  # Use Factory Girl to create fixture data when running tests.
  gem 'factory_girl_rails'
  # Use Faker to create fake data when running tests.
  gem 'faker'
  # Use Shoulda Matchers in order to write more expressive tests.
  gem 'shoulda-matchers'
  # Use Coveralls for test coverage
  gem 'coveralls', require: false
  # Use Rubocop for static code analysis.
  gem 'rubocop', require: false
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %>
  # in views.
  gem 'web-console'

  # Spring speeds up development by keeping your application running in the
  #  background. Read more: https://github.com/rails/spring
  gem 'spring'
end
