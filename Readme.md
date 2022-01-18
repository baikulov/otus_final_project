# Финальный проект

<!-- картинка -->
![alt text](https://github.com/baikulov/otus_final_project/blob/main/images/flowchart.jpg)

## Описание проекта
Цель проекта: создать готовое решение для мониторинга работы в BigQuery

В проекте будут использоватсья инструменты:
- Docker - упаковка проекта
- R SHINY - визуализация данных
- DBT - трансформирование и подготовка данных
- PostgreSQL - локальное хранение данных

Архитектура:
- Подготовка данных
- Создание сервисного аккаунта
- Создание подключения к базе через сервисный аккаунт
- Скачивание таблицы в локальную базу
- Формирование финальных витрин с помощью dbt
- Подключение витрин к Shiny
- Размещение Shiny на виртуальной машине

### 1. Подготовка данных

Инструкция - https://github.com/baikulov/instructions/blob/master/bigquery_project_monitoring.md


### 2. Создание сервисного аккаунта

Инструкция - https://github.com/baikulov/instructions/blob/master/how_to_create_service_account.md


### 3. Развертывание виртуальной машины на GCP



### 5. Разворачиваем приложение на виртуальной машине
- Устанавливаем docker и docker-compose
- ставим гит и клонируем репозиторий
- запускаем приложение командой docker-compose up -d


### Как работает приложение

Подготовка:
- создаем сервисный аккаунт - ГОТОВО
- подключаем импорт логов - ГОТОВО
- создаем ежедневное расписание снимка метаданных проекта - ГОТОВО
- с помощью dbt формируем конечные таблицы на стороне BQ

Приложение:
- Готовим Докерфайл с зависимостями R - ГОТОВО
- Готовим компоуз файл с переменными - ГОТОВО
- Пишем скрипты, забирающие данные из удаленной базы в локальную - ГОТОВО
- Пишем интерфейс
- Пишем графики и вкладки
- Тестируем приложение