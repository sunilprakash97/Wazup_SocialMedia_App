source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby "2.7.2"
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.4'
gem 'figaro'
gem 'devise'
gem 'jbuilder', '~> 2.5'
gem 'uglifier', '>= 1.3.0'
gem 'bootstrap', '~> 4.0.0'
gem 'cloudinary'
gem 'turbolinks', '~> 5'
gem 'sass-rails', '~> 5.0'
gem 'carrierwave', '~> 1.0'
gem 'jquery-rails'
gem 'toastr-rails'
gem 'coffee-rails', '~> 4.2'
gem 'dropzonejs-rails'
gem 'will_paginate-bootstrap4'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :development, :test do
  gem 'sqlite3'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end


gem 'ransack', '~> 2.1'

# For Json web token generation
gem 'jwt'
