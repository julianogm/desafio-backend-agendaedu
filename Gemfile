source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 6.0.3', '>= 6.0.3.4'
gem 'sqlite3', '~> 1.4'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'

gem 'bootsnap', '>= 1.4.2', require: false

gem 'activerecord-import'
gem 'validates_type', '~> 2.1'

group :development, :test do
  gem 'byebug'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec'
end

group :development do
  gem 'bullet'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'database_cleaner'
  gem 'factory_bot_rails', require: true
  gem 'rspec'
  gem 'rspec-rails'
  gem 'rspec-html-matchers'
  gem 'shoulda-matchers', require: false
  gem 'simplecov', require: false
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
