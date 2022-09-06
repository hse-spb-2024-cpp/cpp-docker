# HSE C++ Docker

Docker образ с зависимостями необходимыми для прохождения курса по C++

## Использование

1. Установить [Docker Desktop](https://www.docker.com/products/docker-desktop/) (подойдут и альтернативы, лишь бы поддерживали Dockerfile)
2. Склонировать репозиторий `git clone https://github.com/cuamckuu/hse-cpp-docker.git`
3. Перейти в папку и запустить `docker build . --tag hse-cpp:v1.0.0`
4. Подождать сборки. Сборка с нуля длится около 20 минут
5. Запустить контейнер `docker compose up -d`
6. Подключиться к контейнеру из консоли `docker exec -it hse-cpp /bin/bash`
7. Настроить IDE для подключения внутрь контейнера или использование Docker Toolchain
- [Настройка CLion](https://www.jetbrains.com/help/clion/clion-toolchains-in-docker.html#windows-performance)
- [Настройка VS Code](https://code.visualstudio.com/docs/remote/containers)

