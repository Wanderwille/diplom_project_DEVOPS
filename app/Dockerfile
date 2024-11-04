# Используемый образ 
FROM nginx:latest

# Копирование файлов конфигурации
COPY ./conf /etc/nginx
# Копирование контента
COPY ./cont /usr/share/nginx/html

#Health Check
HEALTHCHECK --interval=20s --timeout=10s --retries=5 CMD curl -f http://localhost/ || exit 1

# Открытие 80 порта
EXPOSE 80