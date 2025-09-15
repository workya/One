# Используем легковесный образ Nginx
FROM nginx:alpine

# Копируем все файлы проекта (включая index.html) в директорию сервера
COPY . /usr/share/nginx/html

# Экспонируем порт 80
EXPOSE 80

# Запускаем Nginx в foreground режиме
CMD ["nginx", "-g", "daemon off;"]
