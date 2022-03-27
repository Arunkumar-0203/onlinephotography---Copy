from django.urls import path

from photography_app.photographer_views import IndexView, AddPhotos, PhotoView, RejectView, ExhibitionView

urlpatterns = [
    path('', IndexView.as_view()),
    path('addphotos',AddPhotos.as_view()),
    path('viewphotos',PhotoView.as_view()),
    path('reject',RejectView.as_view()),
    path('exhibition',ExhibitionView.as_view()),



]


def urls():
    return urlpatterns,'photographer', 'photographer'