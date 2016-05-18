git config --global push.default matching
git config --global user.name SemenovAn
git config --global user.email qwerin@tut.by
mkdir /home/box/web/logs 2> /dev/null

sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
cd /home/box/web/ask/
gunicorn ask.wsgi:application --bind 0.0.0.0:8000 -D
sudo /etc/init.d/nginx restart



#sudo ln -sf /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
#sudo /etc/init.d/gunicorn restart﻿﻿


#sudo ln -sf /home/box/web/etc/django.wsgi /etc/gunicorn.d/django.wsgi
#sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/init.d/gunicorn.conf
#sudo /etc/init.d/gunicorn restart

#kill -HUP /home/box/web/etc/gunicorn.pid 2> /dev/null
#gunicorn -c etc/gunicorn.conf /etc/gunicorn.d/django.wsgi
