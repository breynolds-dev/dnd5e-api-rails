source 'https://rubygems.org'

gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

gem 'active_model_serializers', '~> 0.10.0'

group :development, :test do
  gem 'pry'
  gem 'rspec-core'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers', '~>3.1'
end

group :development do
  gem 'awesome_print'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'simplecov', :require => false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
