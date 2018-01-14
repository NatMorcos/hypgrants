Hypgrants
================
This application was generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem
provided by the [RailsApps Project](http://railsapps.github.io/).


Ruby on Rails
-------------

This application requires:

- Ruby 2.2.4
- Rails 4.2.7.1
- MySQL 5.7.8+ (JSON support)


Getting Started
---------------
```
$ bundle install
$ bundle exec rake db:setup
$ bundle exec rake seed_migration:install:migrations

$ bundle exec rake db:migrate
# bundle exec rake seed:migrate
```

Documentation and Support
-------------------------

Issues
-------------
Phase One:
https://github.com/NatMorcos/hypgrants/projects/1

Deployment
----------
- need imagemagick and ghost script
- need file storage sym linked see: https://github.com/thoughtbot/paperclip#deployment
- Setup for Heroku right now probably moving to capistrano

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)
