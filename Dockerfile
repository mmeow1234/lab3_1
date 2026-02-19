FROM ubuntu:latest

# Копируем .deb пакет в контейнер
COPY reverse-words.deb /app/

# Установка зависимостей и самого пакета
RUN apt-get update && \
    apt-get install -y dpkg && \
    dpkg -i /app/reverse-words.deb || apt-get -f install -y && \
    rm -rf /var/lib/apt/lists/*

# Запуск программы с тестовым аргументом
CMD ["/usr/bin/reverse-words", "Как дела?"]
