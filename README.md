# Описание #



### Форма для расчета стоимости доставки ###

* Сделана на Rails 4.2.2
* База данных: Postgresql


### Инструкции по установке ###
1. Клонировать репозиторий: git@bitbucket.org:Evgen1983/cost_of_delivery.git
2. Перейти в папку с приложением 
3. Создать базу данных: **rake db:create** 
4. Добавить миграции в базу: **rake db:migrate**
5. Запустить сервер: **rails s**

### Основные особенности ###

* Автозаполнение полей **Откуда** и **Куда** реализовано с помощью сервиса http://kladr-api.ru/. Файлы Core.js и Cladr.js в папке vendor/assets. Сам код подключения в файле deliveries.js.coffee.
* Валидация на стороне клиента сделана припомощи гема: **gem 'client_side_validations'**
* Для рассчета расстояния между городами используется сервис http://calc-api.ru. Код вызова API находится в фале city_distance..js.coffee
* Результат рассчитывается я в модели delivery.rb код:
```
#!ruby
before_save :delivery_calculation
def delivery_calculation
    self.calculation = 500 + (self.distance * (self.length + self.width + self.height + self.common_weight))
  end

```
* Выборка из базы 3-топ города по популярности производится при помощи:
```
#!ruby
<%=Delivery.group("from").order('count(*) DESC').limit(3).pluck("from").join(', ')%>
```


### Известные проблемы ###

* Не сделан фронтенд
* При деплое на Heroku форма не работает из за того что блокируется ответ от сервиса  http://calc-api.ru, т.к. протокол не https.