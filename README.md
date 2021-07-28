#Rails Impasta Syndrome Backend


Notes on Setup:

```bash
    rails new <project_name> --api --database=postgresql
```

Gemfile
```rb
    gem 'rack-cors'
    gem 'bcrypt'
    gem 'active_model_serializers'
    gem 'jwt'
```

Uncomment & Change `config/initializers/cors.rb`

Add the `ams.rb` file in `config/initializers`:
```
ActiveModelSerializers.config.default_includes = '**'
```

