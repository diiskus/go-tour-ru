# Тур по Go на русском

Перевод интерактивного учебника [A Tour of Go](https://go.dev/tour) из репозитория `golang/website`.

Переведены все семь разделов (от базового синтаксиса до дженериков и конкурентности), оглавление, подсказки, кнопки редактора и страница 404.

## Содержание

- `welcome.article`: навигация и запуск примеров
- `basics.article`: пакеты, переменные, функции, типы
- `flowcontrol.article`: циклы, ветвления, `switch`, `defer`
- `moretypes.article`: указатели, структуры, срезы, мапы, замыкания
- `methods.article`: методы, интерфейсы, ошибки, `io.Reader`, изображения
- `generics.article`: параметры типов и ограничения
- `concurrency.article`: горутины, каналы, `select`, `sync.Mutex`

## Запуск

Нужен Go 1.26 или новее:

```bash
git clone git@github.com:diiskus/go-tour-ru.git
cd go-tour-ru/tour
go run .
```

Сервер поднимется на `http://127.0.0.1:3999`.

Чтобы собрать бинарник со всеми встроенными ресурсами:

```bash
cd tour
go build -o tour-ru .
./tour-ru
```

Или через Docker:

```bash
docker build -t go-tour-ru .
docker run -p 7860:7860 go-tour-ru
```

## Лицензия

Основано на [golang/website](https://github.com/golang/website), лицензия BSD (см. `LICENSE`).
