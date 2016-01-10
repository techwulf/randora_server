from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^blank/$', views.blank, name='blank'),
    url(r'^template/$', views.template, name='template'),
    url(r'^fibonacci/(?P<value>[0-9]+)$', views.fibonacci, name='fibonacci'),
]