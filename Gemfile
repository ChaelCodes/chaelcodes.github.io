# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

ruby '2.7.8'

gem 'jekyll', '~> 4.2.0'
# This is your Jekyll Theme
gem 'type-on-strap', '~> 2.4.5'

# If you have any plugins, put them here!
group :jekyll_plugins do
  gem 'jekyll-feed', '~> 0.12'
  gem 'jekyll-twitch', '~> 1.0'
  gem 'jekyll-youtube'
end

# Windows and JRuby does not include zoneinfo files, so bundle the tzinfo-data gem
# and associated library.
platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem 'tzinfo', '~> 1.2'
  gem 'tzinfo-data'
end

# Performance-booster for watching directories on Windows
gem 'wdm', '~> 0.1.1', platforms: %i[mingw x64_mingw mswin]

gem 'webrick', '~> 1.7'

gem 'rubocop'
