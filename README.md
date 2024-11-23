📃 REST API Для Создания TODO Списков

Небольшое приложения разобранное следующие концепции:
 - Разработка Веб-Приложений на Go, следуя дизайну REST API.
 - Работа с фреймворком gin-gonic/gin.
 - Подход Чистой Архитектуры в построении структуры приложения. Техника внедрения зависимости.
 - Работа с БД Postgres. Запуск из Docker. Генерация файлов миграций.
 - Конфигурация приложения с помощью библиотеки spf13/viper. Работа с переменными окружения.
 - Работа с БД, используя библиотеку sqlx.
 - Регистрация и аутентификация. Работа с JWT. Middleware.
 - SQL запросов.
 - Graceful Shutdown


Для запуска приложения:
```make build && make run```
Если приложение запускается впервые, необходимо применить миграции к базе данных:

```make migrate```
