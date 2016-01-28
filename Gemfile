source "https://rubygems.org"

ruby "2.3.0"

gem "autoprefixer-rails"
gem "coffee-rails", "~> 4.1.0"
gem "sidekiq"
gem "jquery-rails"
gem "newrelic_rpm", ">= 3.9.8"
gem "normalize-rails", "~> 3.0.0"
gem "pg"
gem "puma"
gem "rack-canonical-host"
gem "rails", "~> 4.2.0"
gem "recipient_interceptor"
gem "sass-rails", "~> 5.0"
gem "simple_form"
gem "title"
gem "uglifier"

group :development do
  gem "quiet_assets"
  gem "web-console"
end

group :development, :test do
  gem "awesome_print"
  gem "bullet"
  gem "bundler-audit", require: false
  gem "dotenv-rails"
  gem "factory_girl_rails"
  gem "pry-byebug"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.4.0"
end

group :test do
  gem "capybara-webkit"
  gem "cucumber-rails", require: false
  gem "database_cleaner"
  gem "launchy"
  gem "shoulda-matchers"
  gem "simplecov", require: false
  gem "timecop"
end

group :staging, :production do
  gem "rails_stdout_logging"
  gem "rack-timeout"
end
