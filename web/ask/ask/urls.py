from django.conf.urls import include, url

from django.contrib import admin
admin.autodiscover()

urlpatterns = [
    # Examples:
    # url(r'^$', 'ask.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),
    url(r'^$', basetemp, {'url':'/?page=','order':'-added_ad'}),
	url(r'^login/.*$', loginform),
	url(r'^logout/.*$', logoutPage),
	url(r'^signup/.*$', signupform),
	url(r'^question/(?P<slug>\d+)/$', questpage),
	url(r'^question/$', askform),
	url(r'^ask/.*$', askform),
	url(r'^popular/.*$', basetemp, {'url':'/popular/?page=','order':'-likes'}),
	url(r'^new/.*$', test),
	url(r'^answer/.*$', newanswer),

    url(r'^admin/', include(admin.site.urls)),
]
