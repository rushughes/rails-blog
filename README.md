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

$ rails console
Running via Spring preloader in process 92426
Loading development environment (Rails 5.1.6.1)
2.5.1 :001 > Article.all
  Article Load (2.0ms)  SELECT  "articles".* FROM "articles" LIMIT ?  [["LIMIT", 11]]
 => #<ActiveRecord::Relation []>
2.5.1 :002 > Article
 => Article(id: integer, title: string, description: text, created_at: datetime, updated_at: datetime)
2.5.1 :003 > article = Article.new
 => #<Article id: nil, title: nil, description: nil, created_at: nil, updated_at: nil>
2.5.1 :004 > article.title = "This is my first article"
 => "This is my first article"
2.5.1 :005 > article
 => #<Article id: nil, title: "This is my first article", description: nil, created_at: nil, updated_at: nil>
2.5.1 :006 > article.description = "this is the description"
 => "this is the description"
2.5.1 :007 > article.save
article.save                          article.saved_change_to_description   article.saved_change_to_updated_at
article.save!                         article.saved_change_to_description?  article.saved_change_to_updated_at?
article.saved_change_to_attribute     article.saved_change_to_id            article.saved_changes
article.saved_change_to_attribute?    article.saved_change_to_id?           article.saved_changes?
article.saved_change_to_created_at    article.saved_change_to_title         
article.saved_change_to_created_at?   article.saved_change_to_title?        
2.5.1 :007 > article.save
   (0.1ms)  begin transaction
  SQL (0.9ms)  INSERT INTO "articles" ("title", "description", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["title", "This is my first article"], ["description", "this is the description"], ["created_at", "2019-04-06 14:11:56.767681"], ["updated_at", "2019-04-06 14:11:56.767681"]]
   (0.8ms)  commit transaction
 => true
2.5.1 :008 > Article.all
  Article Load (0.2ms)  SELECT  "articles".* FROM "articles" LIMIT ?  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Article id: 1, title: "This is my first article", description: "this is the description", created_at: "2019-04-06 14:11:56", updated_at: "2019-04-06 14:11:56">]>
2.5.1 :009 > article = Article.new(title: "2nd article", description: "2nd description")
 => #<Article id: nil, title: "2nd article", description: "2nd description", created_at: nil, updated_at: nil>
2.5.1 :010 > article.save
   (0.2ms)  begin transaction
  SQL (0.4ms)  INSERT INTO "articles" ("title", "description", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["title", "2nd article"], ["description", "2nd description"], ["created_at", "2019-04-06 14:13:14.045474"], ["updated_at", "2019-04-06 14:13:14.045474"]]
   (0.7ms)  commit transaction
 => true
2.5.1 :011 > Article.all
  Article Load (0.2ms)  SELECT  "articles".* FROM "articles" LIMIT ?  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Article id: 1, title: "This is my first article", description: "this is the description", created_at: "2019-04-06 14:11:56", updated_at: "2019-04-06 14:11:56">, #<Article id: 2, title: "2nd article", description: "2nd description", created_at: "2019-04-06 14:13:14", updated_at: "2019-04-06 14:13:14">]>
2.5.1 :012 > Article.create(title: "This is my third article", description: "My third article's description")
   (0.1ms)  begin transaction
  SQL (2.7ms)  INSERT INTO "articles" ("title", "description", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["title", "This is my third article"], ["description", "My third article's description"], ["created_at", "2019-04-06 14:14:07.836965"], ["updated_at", "2019-04-06 14:14:07.836965"]]
   (1.6ms)  commit transaction
 => #<Article id: 3, title: "This is my third article", description: "My third article's description", created_at: "2019-04-06 14:14:07", updated_at: "2019-04-06 14:14:07">
2.5.1 :013 > Article.all
  Article Load (0.2ms)  SELECT  "articles".* FROM "articles" LIMIT ?  [["LIMIT", 11]]
 => #<ActiveRecord::Relation [#<Article id: 1, title: "This is my first article", description: "this is the description", created_at: "2019-04-06 14:11:56", updated_at: "2019-04-06 14:11:56">, #<Article id: 2, title: "2nd article", description: "2nd description", created_at: "2019-04-06 14:13:14", updated_at: "2019-04-06 14:13:14">, #<Article id: 3, title: "This is my third article", description: "My third article's description", created_at: "2019-04-06 14:14:07", updated_at: "2019-04-06 14:14:07">]>
2.5.1 :014 > exit


$ heroku run rake db:migrate --app udemy-alpha-blog-rus
$ bundle install --without production
