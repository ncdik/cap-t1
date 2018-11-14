# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

# Имя приложения
set :application, "cap-t1-tst"
# Вызов функции set создаст переменную application и присвоит ей значение "myproject"

# В проекте мы используем только один сервер, выполняющий роль веб-сервиса.
role :web, "localhost" # хост удалённого сервера
set :user, 'mike' # пользователь удалённого сервера
set :use_sudo, false # не запускать команды под sudo

# Директория приложения на удалённом хостинге
set :app_dir, "/home/mike/Deploy/cap-t1"
# Запись "/home/zhukov/#{application}/" аналогична "/home/$user/$application/" в PHP

# Директория, куда будет делаться checkout из репозитория
set :deploy_to, "/home/mike/Deploy/cap-t1/deploy" # /home/myuser/myproject/deploy

# Настройки репозитория
# set :scm, :git # используем subversion
set :repo_url, 'git@github.com:ncdik/cap-t1.git'
# Формируем команду svn checkout --username mysvnuser svn://host/trunk/myproject
