source 'https://rubygems.org'

gem 'rails', '3.2.10'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'haml'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'omniauth-twitter'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

gem "activeadmin"
#gem "capybara", :group => [:development, :test]
#group :test do
  #gem "cucumber-rails", :require => false
  #gem "capybara"
  #gem "database_cleaner"
#end



# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
group :development, :test do
  gem 'haml-rails'
  gem "erb2haml", :group => :development
  gem 'rails-footnotes', '>= 3.7.5.rc1', :group => :development
  gem 'hpricot' # for html2haml
  gem 'rspec-rails'
  gem "shoulda-matchers"
  gem 'capybara'
  gem "capybara-webkit"
  gem 'nifty-generators'
  gem "factory_girl_rails"
  gem 'launchy'
  gem 'database_cleaner'
  gem 'cucumber-rails', :require => false
  gem 'rb-inotify', :require => false
  gem 'rb-fchange', :require => false
  # Although these really should be conditional, Heroku will reject the deploy
  # from OS X because the conditional statements cause a mismatch between what
  # it's seeing in the Gemfile.lock vs the Gemfile.
  # if RUBY_PLATFORM =~ /darwin/i
    gem 'rb-fsevent', '~>0.9', :group => :test
    gem 'growl', :group => :test
  # elsif RUBY_PLATFORM =~ /linux/i
    #gem 'libnotify', :group => :test
  # end
  gem 'guard-rspec'
  #gem 'guard-coffeescript'
  gem 'guard-livereload'
  gem 'jasmine', '1.1.0'
  gem 'pry'
  gem 'spork', '> 0.9.0.rc'
  gem 'guard-spork'
  gem 'railroady'
  gem 'faker'
end

