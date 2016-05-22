git config --global push.default matching
git config --global user.name SemenovAn
git config --global user.email qwerin@tut.by
mkdir /home/box/web/logs 2> /dev/null

#sudo rm /etc/nginx/sites-enabled/default

#sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
#sudo /etc/init.d/nginx restart
#sudo ln -sf /home/box/web/etc/gunicorn-wsgi.conf /etc/gunicorn.d/test-wsgi
#sudo ln -sf /home/box/web/etc/gunicorn-django.conf /etc/gunicorn.d/test-django
#sudo /etc/init.d/gunicorn restart

sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/nginx.conf
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/django.wsgi /etc/gunicorn.d/django.wsgi
sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/init.d/gunicorn.conf
sudo /etc/init.d/gunicorn restart

#kill -HUP /home/box/web/etc/gunicorn.pid 2> /dev/null
#gunicorn -c etc/gunicorn.conf /etc/gunicorn.d/django.wsgi
