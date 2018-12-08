# Base APP - with Ruby on Rails 5.2.0 by [InterageASH](http://www.interage.in)

## Requirements
- Ruby 2.5.1
- Rails 5.2.0
- PostgreSQL 9.6.3

## Installation

#### First steps

-> Mudar referências a 'Produs' e 'base_app' para o nome do projeto<br>
-> Rodar 'bundle exec rake secret'<br>
-> Copiar a chave secreta gerada para o arquivo config/secrets.yml 

#### Application

```bash
bundle install
cp .env.example .env
cp config/database.yml.example config/database.yml
```

Set your `.env` and your `config/database.yml` if you need

#### Database

```bash
rails db:drop db:create db:migrate db:seed
```

## Run application

```bash
bundle exec rails s
```

#### Rubocop

```bash
rubocop -D -E -S # to verify
# or
rubocop -D -E -S --auto-correct # to verify and fix
```

#### Rspec

```bash
bundle exec rspec
```
