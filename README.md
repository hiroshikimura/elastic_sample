# README

## WHAT THIS?

これは、Ruby on RailsのElastic APMを使うサンプルです。

```
docker-compose up -d
bundle install
bundle exec rails webpacker:install
bundle exec rails webpacker:compile
RAILS_ENV=development bundle exec rails db:reset
RAILS_ENV=development bundle exec rails db:seed
RAILS_ENV=development bundle exec rails s
```

って感じで動きます。（動いた）<br/>
必要に応じて、色々とやってください。


## 手元で動かす際のURL
- [rails app](http://localhost:3000/books/)
- [kibana](http://localhost:5601/)
