from django.conf.urls import include, url
from django.contrib import admin

urlpatterns = [
    url(r'^benchmark/', include('benchmark.urls')),
    url(r'^admin/', admin.site.urls),
]