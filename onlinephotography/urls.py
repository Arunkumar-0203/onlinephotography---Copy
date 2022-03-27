
from django.contrib import admin
from django.urls import path
from onlinephotography import settings
from photography_app import admin_urls,photographer_urls,user_urls
from photography_app.views import IndexView,Photographer_regView,UserregView, LoginView, ViewPHOTO
from django.conf.urls.static import static

urlpatterns = [
         path('',IndexView.as_view()),
         path('phreg',Photographer_regView.as_view()),
         path('user/',UserregView.as_view()),
         path('login',LoginView.as_view()),
         path('admin/',admin_urls.urls()),
         path('photographer/',photographer_urls.urls()),
         path('user1/',user_urls.urls()),
         path('photo',ViewPHOTO.as_view())
]
if settings.DEBUG:
    urlpatterns+=static(settings.STATIC_URL,document_root=settings.STATIC_ROOT)
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

