from django.conf.urls import url, include
from django.contrib import admin

from ask.views import found, not_found, init25
from qa.views import index, popular, ask, login_view, signup

urlpatterns = patterns('qa.views',                                              
   url(r'^$', 'test'),                                                              
   url(r'^login/.*$', 'test', name='login'),                                    
   url(r'^signup/.*', 'test', name='signup'),                                   
   url(r'^question/(?P<id>[0-9]+)/$', 'test', name='question'),                 
   url(r'^ask/.*', 'test', name='ask'),                                         
   url(r'^popular/.*', 'test', name='popular'),                                 
   url(r'^new/.*', 'test', name='new'),                                         
)    
