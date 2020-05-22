# Клон ask.fm на Ruby on Rails

У пользователей есть возможность задавать вопросы
другим пользователям, отвечать на вопросы заданные им и прочее.

Добавлена Recaptcha для анонимов.

## Установка и запуск

```
bundle install
rails db:migrate
rails db:seed // если вы хотите загрузить демо-данные
```

### Демо версия

Демо версия доступна на хероку
* [askme-fm.herokuapp.com/](http://askme-fm.herokuapp.com/)

## Используемые технологии

* [Rails 6](https://rubygems.org/gems/rails/versions/) - Любимый веб-фреймворк
* [Recaptcha](https://github.com/ambethia/recaptcha) - каптча для анонимных юзеров


## Автор

* **LEM** - *Учебный проект* - [LEM](https://github.com/Lemeri02)
