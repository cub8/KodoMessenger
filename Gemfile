# frozen_string_literal: true

# rubocop:disable Layout/LineLength

source 'https://rubygems.org'

gem 'bootsnap', '~> 1.23', require: false # Reduces boot times through caching; required in config/boot.rb
gem 'cssbundling-rails', '~> 1.4.3' # Bundle and process CSS [https://github.com/rails/cssbundling-rails]
gem 'haml-rails', '~> 3.0' # For writing html
gem 'image_processing', '~> 1.2' # Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem 'jsbundling-rails', '~> 1.3' # Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem 'kamal', '~> 2.10', require: false # Deploy this application anywhere as a Docker container [https://kamal-deploy.org]
gem 'pg', '~> 1.6' # Use postgresql as the database for Active Record
gem 'propshaft', '~> 1.3' # The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem 'puma', '>= 5.0' # Use the Puma web server [https://github.com/puma/puma]
gem 'rails', '~> 8.1.2' # Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'solid_cable', '~> 3.0' # Broadcasting data
gem 'solid_cache', '~> 1.0' # Caching
gem 'solid_queue', '~> 1.3' # Queues
gem 'stimulus-rails', '~> 1.3' # Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'thruster', '~> 0.1', require: false # Add HTTP asset caching/compression and X-Sendfile acceleration to Puma [https://github.com/basecamp/thruster/]
gem 'turbo-rails', '~> 2.0' # Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'tzinfo-data', '~> 1.2025', platforms: %i[windows jruby] # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'view_component', '~> 4.4' # Turn partials to components

group :development, :test do
  gem 'binding_of_caller', '~> 2.0' # Allows to grab bindings from higher up the call stack
  gem 'brakeman', '~> 8.0.2', require: false # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem 'bundler-audit', '~> 0.9', require: false # Audits gems for known security defects (use config/bundler-audit.yml to ignore issues)
  gem 'debug', '~> 1.11', platforms: %i[mri windows], require: 'debug/prelude' # Debugging
  gem 'factory_bot', '~> 6.5.6' # Defining and using factories
  gem 'rubocop', '~> 1.84' # Ruby Linter
  gem 'rubocop-espago', '~> 1.2', require: false # Well defined Rubocop styles
  gem 'ruby-lsp', '~> 0.26' # Ruby LSP
end

group :development do
  gem 'better_errors', '~> 2.10' # Better error page
  gem 'web-console', '~> 4.2' # Use console on exceptions pages [https://github.com/rails/web-console]
end

# rubocop:enable Layout/LineLength
