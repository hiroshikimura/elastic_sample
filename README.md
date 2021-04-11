# README

これは、Ruby on RailsのElastic APMを使うサンプルです。

```
docker-compose up -d
bundle install
RAILS_ENV=development bundle exec rails db:create
RAILS_ENV=development bundle exec rails db:migrate
RAILS_ENV=development bundle exec rails db:seed
RAILS_ENV=development bundle exec rails s
```

って感じで動きます。（動いた）<br/>
必要に応じて、色々とやってください。

- [rails appのURL](http://localhost:3000/books/)
- [kibanaのURL](http://localhost:5601/)
