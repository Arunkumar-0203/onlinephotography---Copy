from django.urls import path

from photography_app.admin_views import IndexView, UserView, PhotographerView, ApproveView, RejectView, ViewUser, \
    Viewphotographer, AddExhibition, ViewExhibition, Rejectexhibition_view, ViewBoocking, TrackView, \
    PhotoViews, RejectViews, ApprovePayment

urlpatterns = [
    path('', IndexView.as_view()),
    path('user_view',UserView.as_view()),
    path('photographer_view',PhotographerView.as_view()),
    path('approve',ApproveView.as_view()),
    path('reject',RejectView.as_view()),
    path('user',ViewUser.as_view()),
    path('photographer',Viewphotographer.as_view()),
    path('exhibition',AddExhibition.as_view()),
    path('viewex',ViewExhibition.as_view()),
    path('xreject',Rejectexhibition_view.as_view()),
    path('viewphoto',PhotoViews.as_view()),
    path('Boocking',ViewBoocking.as_view()),
    path('Track',TrackView.as_view()),
    path('rejects',RejectViews.as_view()),
    path('approvess/',ApprovePayment.as_view())
    # path('admin/',admin_urls.urls())
]


def urls():
    return urlpatterns, 'admin', 'admin'