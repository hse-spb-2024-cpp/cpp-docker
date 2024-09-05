# HSE C++ Docker

Docker образ с зависимостями необходимыми для прохождения курса по C++

## Установка

1. Установить [Docker Desktop](https://www.docker.com/products/docker-desktop/) (При возникновении проблем, см. пункт "Проблемы с докером" ниже)
2. Установить [git](https://git-scm.com/downloads), если его нет, пока не нужен, но пригодится позднее
3. Открыть консоль/терминал/PowerShell и выполнить команду `docker pull blonded04/cpp-docker`

## Запуск в консоли

1. Открываем консоль/терминал/etc. в какой-нибудь рабочей папке проекта
2. Клонируем нужный репозиторий с проверками компилятора `git clone https://github.com/hse-spb-2024-cpp/lectures.git`. Должна появиться папка с названием 'lectures'
3. Запускаем команду `docker run --rm -it -v ${PWD}:/hse-cpp -w /hse-cpp blonded04/cpp-docker /bin/bash`. Это запустит консоль в той же папке, но с доступом к компиляторам
4. Вывод консоли меняется, что говорит о том, что мы внутри контейнера. Можно проверить версию компилятора `g++-12 --version`

![Docker g++ version](./assets/docker_cmd.png)

5. Переходим в папку с нужными файлами `cd lectures/common/checkver/`
6. Компилируем файл `g++-12 checkver.cpp`
7. Запускаем файл командой `./a.out`
8. Сверяем Вывод

![Docker compile file](./assets/docker_compile.png)

## Настройка и запуск CLion

В целом используем [этот гайд](https://www.jetbrains.com/help/clion/clion-toolchains-in-docker.html).

Если кратко: Нужно зайти в настройки и указать всё как на скрине:

![Clion Docker Toolchain](./assets/clion.png)

## Проблемы с докером

### Ошибка с WSL2

Либо отключаем поддержку WSL2, если не получается, то доставляем WSL2 по инструкции по ссылке из ошибки

![Docker WSL2 Error](./assets/docker_wsl2.png)

### Ошибка с BIOS

![Docker BIOS](./assets/docker_bios.png)

### Ошибка с Hyper-V

![Docker BIOS](./assets/docker_hyperv.png)
