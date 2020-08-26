# score-server
## Getting started
First, install the necessary dependencies:

* Ruby (2.6.6)
* bundler (`gem install bundler`)
* The database server of your choice (sqlite3, postgresql)

> NOTE: You can change the `adapter` property in `config/database.yml` to choose the appropriate database adapater.

Then, run the following commands to install Ruby dependencies and start the application:

```
bundle install
bundle exec rake db:create
bundle exec rake db:migrate
bundle exec ruby application.rb
```