# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'rails', '~> 7.0.3'

gem 'sprockets-rails'

gem 'pg', '~> 1.1'

gem 'puma', '~> 5.0'

gem 'jbuilder'

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'bootsnap', require: false

gem 'devise'

gem 'image_processing', '>= 1.2'

gem 'kaminari'

gem 'activeadmin'
gem 'arctic_admin'

gem 'acts_as_votable'
gem 'faker'
gem 'font-awesome-sass', '~> 6.4.0'
gem 'jquery-rails'

gem 'rubocop-rails', require: false

gem 'rails-controller-testing'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'rspec-rails', '~> 6.0.0'
  gem 'shoulda-matchers', require: false
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
