# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


$ rails s -b 127.0.0.1 -p 8080

$ rake routes
     Prefix Verb URI Pattern            Controller#Action
pages_home GET  /pages/home(.:format)  pages#home
pages_about GET  /pages/about(.:format) pages#about

$ bundle install --without production
$ rails generate migration create_articles
$ rake db:migrate
$ rake db:migrate
$ rails generate migration add_description_to_articles
