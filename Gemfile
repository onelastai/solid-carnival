source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '~> 3.4.0'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.1.5', '>= 7.1.5.2'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'

# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 6'

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'importmap-rails'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'

# Modern Frontend Stack for Railway.com-inspired design
gem 'cssbundling-rails'                  # CSS bundling for modern workflows
gem 'tailwindcss-rails', '~> 2.0'        # Modern utility-first CSS framework
gem 'view_component', '~> 3.0'           # Reusable component system

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'

# Security Updates - Fix vulnerabilities detected by bundle audit
gem 'net-imap', '>= 0.5.7' # Fix DoS vulnerabilities
gem 'nokogiri', '>= 1.18.9' # Fix libxml2/libxslt CVEs
gem 'rack', '>= 3.1.16' # Fix DoS and injection vulnerabilities
gem 'rack-session', '>= 2.1.1' # Fix session restoration issue
gem 'rails-html-sanitizer', '>= 1.6.1' # Fix XSS vulnerabilities
gem 'rexml', '>= 3.3.9'                 # Fix ReDoS vulnerability
gem 'thor', '>= 1.4.0'                  # Fix shell command construction

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem 'bcrypt', '~> 3.1.7'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem 'image_processing', '~> 1.2'

# =============================================================================
# ENVIRONMENT VARIABLES & CONFIGURATION
# =============================================================================

# Environment variables management
gem 'dotenv-rails', '~> 2.8'

# Configuration management
gem 'figaro', '~> 1.2'

# =============================================================================
# AI & API INTEGRATIONS
# =============================================================================

# HTTP client for API requests
gem 'faraday', '~> 2.7'
gem 'faraday-retry', '~> 2.2'
gem 'httparty', '~> 0.21'

# JSON processing
gem 'oj', '~> 3.16'

# OpenAI API client
gem 'ruby-openai', '~> 6.3'

# =============================================================================
# AUTHENTICATION & AUTHORIZATION
# =============================================================================

# Authentication
gem 'devise', '~> 4.9'

# Authorization
gem 'pundit', '~> 2.3'

# JWT tokens
gem 'jwt', '~> 2.7'

# OAuth
gem 'omniauth', '~> 2.1'
gem 'omniauth-github', '~> 2.0'
gem 'omniauth-google-oauth2', '~> 1.1'
gem 'omniauth-rails_csrf_protection', '~> 1.0'

# =============================================================================
# RATE LIMITING & SECURITY
# =============================================================================

# Rate limiting
gem 'rack-attack', '~> 6.7'

# CORS handling
gem 'rack-cors', '~> 2.0'

# Security headers
gem 'secure_headers', '~> 6.5'

# =============================================================================
# BACKGROUND JOBS & CACHING
# =============================================================================

# Background job processing
gem 'sidekiq', '~> 7.2'

# Caching
gem 'redis-rails', '~> 5.0'

# Session storage
gem 'redis-session-store', '~> 0.11'

# =============================================================================
# DATABASE & ORM
# =============================================================================

# PostgreSQL for production
gem 'pg', '~> 1.5', group: :production

# Database pagination
gem 'kaminari', '~> 1.2'

# Database search
gem 'ransack', '~> 4.1'

# =============================================================================
# FILE UPLOAD & STORAGE
# =============================================================================

# Cloud storage
gem 'aws-sdk-s3', '~> 1.141'

# =============================================================================
# MONITORING & ANALYTICS
# =============================================================================

# Error monitoring
gem 'sentry-rails', '~> 5.15'
gem 'sentry-ruby', '~> 5.15'

# Performance monitoring
gem 'newrelic_rpm', '~> 9.6'

# =============================================================================
# API DOCUMENTATION
# =============================================================================

# API documentation
gem 'rswag', '~> 2.12'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  # Testing framework
  gem 'factory_bot_rails', '~> 6.4'
  gem 'rspec-rails', '~> 6.1'

  # Test data generation
  gem 'faker', '~> 3.2'

  # Code quality
  gem 'rubocop', '~> 1.57', require: false
  gem 'rubocop-rails', '~> 2.33', require: false
  gem 'rubocop-rspec', '~> 2.25', require: false
end

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'solargraph'

  gem 'erb_lint'

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"

  gem 'hotwire-livereload', '~> 1.2'
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
