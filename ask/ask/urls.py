from django.conf.urls import patterns, include, url
from . import views

from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'ask.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),
	url(r'^question/(?P<question_id>[0-9]+)/$', views.test, name='question'),
    # url(r'^admin/', include(admin.site.urls)),
)
