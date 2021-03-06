source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

## RAILS AND SERVER ##
gem 'rails', '~> 6.0.0.rc1'
gem 'puma', '~> 3.11'

## DATABASES
gem 'sqlite3', '~> 1.4'
gem "mysql2", "< 0.5"

## CSS AND JAVASCRIPT ##
gem 'sass-rails', '~> 5'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'materialize-sass', '~> 1.0.0'

gem "actiontext", require: "action_text"
gem 'image_processing', '~> 1.2'



## TOOLS ##
gem 'simple_form', "4.1.0"
gem "devise", "4.6.2"
gem 'font-awesome-sass', '~> 5.6.1'
gem 'local_time'

## BOOT FASTER ##
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
