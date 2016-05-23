#!/usr/bin/env bash
git config --global push.default matching
git config --global user.name SemenovAn
git config --global user.email qwerin@tut.by
mkdir /home/box/web/logs 2> /dev/null

sudo ln -fs /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
#sudo ln -sf /home/box/web/etc/django.wsgi /etc/gunicorn.d/django.wsgi
#sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/init.d/gunicorn.conf
#sudo /etc/init.d/gunicorn restart

gunicorn -c /home/box/web/etc/hello.py hello:app --daemon
gunicorn -c /home/box/web/etc/django.py wsgi --daemon

# MySQL
echo 'innodb_use_native_aio = 0' | sudo tee --append /etc/mysql/my.cnf
sudo service mysql restart
sudo mysql -uroot -e "CREATE DATABASE ask CHARACTER SET utf8 COLLATE utf8_general_ci;"
sudo mysql -uroot -e "GRANT ALL PRIVILEGES ON ask.* TO 'ask_user'@'localhost' IDENTIFIED BY '123456789';"

#kill -HUP /home/box/web/etc/gunicorn.pid 2> /dev/null
#gunicorn -c etc/gunicorn.conf /etc/gunicorn.d/django.wsgi
