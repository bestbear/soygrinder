# frozen_string_literal: true

# Bundler Documentation
#   http://bundler.io
#
#

### INIT
## Install all of the required gems from your specified sources:
#   $ bundle install
#   $ git add Gemfile Gemfile.lock
#
## Inside your app, load up the bundled environment:
#   require 'rubygems'
#   require 'bundler/setup'
#
# Then require gems as usual:
#   require 'nokogiri'
#
#
### EXECUTABLES
## Run an executable that comes with a gem in your bundle:
#   $ bundle exec rspec spec/models
#
# If you want a way to get a shortcut to gems in your bundle:
#   $ bundle install --binstubs
#   $ bin/rspec spec/models
#
#
### DEPLOYMENTS
## On production servers, you can enable deployment mode:
#   $ bundle install --deployment
#
# Store all of the required gems in your application.  All future installs will
# get gems from this cache, bypassing rubygems.org:
#   $ bundle package
#


### SYSTEM DEPENDENCIES
# Ruby    2.4.2
# Bundler 1.16.0
#
# See README.md for a detailed list of system-level packages and other setup requirements.


### GEM SOURCES
source 'https://rubygems.org'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


### WEB FRAMEWORK
gem 'rails', '5.1.4'                      # Rails web framework
#gem 'rack', '2.0.4'                       # Modular webserver interface


### DATA MANAGEMENT & SECURITY
gem 'activeresource',                     # ActiveRecord-based REST object wrapper
  #git: 'https://github.com/rails/activeresource',
  #ref: 'd9124b9907d2a61781b0111a2ab00afc22c79e4a'
  path: File.join(File.dirname(__FILE__), 'vendor', 'gems', 'activeresource-d9124b9907d2')

  # NOTE: [Jan 2018] Rails 5 requires the ActiveResource master branch (serializers are broken in the current
  #       stable release).
gem 'hash_dot'                            # Access hash properties using dot notation
gem 'httparty'                            # HTTP and REST client for Ruby
#gem 'persistent_httparty'                 # Persistent HTTP connections using a connection pool via HTTParty
gem 'pg', '~> 0.21'                       # PostgreSQL database adapter
gem 'rest-client'                         # HTTP and REST client


### CONTENT AND USER MANAGEMENT
gem 'faker'                               # Generate fake data such as names, addresses, and phone numbers
gem 'fast_jsonapi'                        # JSON:API serializer for Ruby Objects
gem 'kaminari'                            # Scope-based customizable paginator


### OPERATIONS
gem 'aws-healthcheck'             # Mounts 200 response at /healthcheck as middleware (for AWS load balancers)
#gem 'aws-sdk-iam'                 # AWS Identity and Access Management
#gem 'aws-sdk-kms'                 # AWS Key Management Service


### PLATFORM-SPECIFIC
platform :jruby, :mingw, :mswin, :x64_mingw do
  # JRuby and Windows 32- and 64-bit 'mingw32' platform (aka RubyInstaller)
  gem 'tzinfo-data'         # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
end


### TEST OR DEVELOPMENT
group :development, :test do
  ### DEBUGGER
  platform :mingw, :mri, :x64_mingw do
    gem 'byebug'              # Call 'byebug' in code to get a debugger console
  end
  gem 'pry-rails'             # Pry debugger replacement:
                              #   - To run rails console             :  pry -r ./config/environment
                              #   - To trigger debugger in code, use :  binding.pry
  gem 'pry-byebug'            # Add navigation commands (step, next, finish, continue) and breakpoints
  gem 'pry-doc'               # Documentation plugin for pry debugger
  gem 'pry-stack_explorer'    # Pry REPL plugin enabling navigation of the call-stack ('show-stack')

  ### TOOLS
  gem 'colorize'              # String extension to set ANSI text color and effects in IRB
  gem 'puma', '~>3.7'         # Puma app server
  gem 'swagger-blocks'        # Define and serve live-updating Swagger JSON for Ruby apps
end


### DEVELOPMENT only
group :development do
  ### FILE CHANGES
  gem 'guard'                           # CLI to monitor events on file system changes (for testing+reloading)
  gem 'guard-minitest', require: false  # Automatically run Minitests (run `$ guard init minitest` to init)
  gem 'listen', '>= 3.0.5', '< 3.2'     # Listen for file modifications
  #gem 'ruby_gntp'                       # Growl Notification Transport Protocol (GNTP) for Growl integration
  gem 'terminal-notifier-guard'         # MacOS Notification Center integration for Guard.

  ### TOOLS
  gem 'awesome_print'               # Pretty print for Ruby objects with style, color, and indentation
  gem 'spring'                      # Rails application pre-loader that speeds development by keeping
                                    # application running in the background: https://github.com/rails/spring
  gem 'spring-watcher-listen', '~> 2.0.0'  # Spring listener
  gem 'activerecord', '4.2.5'
  gem 'rake'
  gem 'thin'
  gem 'require_all'
end


### TEST ONLY
group :test do
  gem 'mini-apivore'                    # MiniTest version of Apivore gem to tests API against its Swagger
                                        # description of end-points, models, and query parameters
  gem 'minitest-rails'                  # Minitest integration. Bootstrap: `rails generate minitest:install`
  gem 'minitest-reporters', '~> 1.0.20' # Create customizable Minitest output formats

  gem 'simplecov'                       # Integration for coverage logs with CodeClimate
end

