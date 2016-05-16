# Whoipedia API

A Rails API that serves Doctor Who season and episode data to [this Ember app](https://github.com/sophiedebenedetto/whoipedia-front).

## Dependencies

The API is built withe Rails API and Active Model Serializers
* `gem rails-api`
* `gem active_model_serializers` 

CORS is supported by Rack CORS gem
* `gem 'rack-cors'`

## Seeding 

* Database is seeded by scraping Wikipedia Doctor Who Season pages. 
* Seed file uses Nokogiri and Open URI to scrape Wikipedia pages


## Contributing

* Fork and clone this repo and run bundle install
* The app runs with a Postgres database, so `brew install postgresql` if you haven't done so already
* Run `rake db:create; rake db:migrate; rake db:seed`
* You're ready! 

### Important

#### Authorization
* This app does not use the session store to store current user data. Instead, we're using a token-based authentication system. The app receives a token from the separate app and uses HTTP Authentication Token Controller methods to authenticate the user based on this token. Note the line

```ruby
 include ActionController::HttpAuthentication::Token::ControllerMethods
```

in the Application Controller. 

#### Model Serialization

This API is using Active Model Serializer to serialize model data. Note this line:

```ruby
include ActionController::Serialization
```

in the Application Controller. 

Serializers are defined in `app/serializers`. Records are not side loaded. Instead, we are serializing the IDs of associated records. 
