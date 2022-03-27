from django.urls import path

from photography_app.user_view import IndexView, ViewGallery, Exhibition_View, ShopView, CartView, ViewCart, Payment, \
    RejectcartView, BookingView, chpayment, BillinView, Billretn

urlpatterns = [
    path('', IndexView.as_view()),
    path('gallery',ViewGallery.as_view()),
    path('view_exhibition',Exhibition_View.as_view()),
    path('shop',ShopView.as_view()),
    path('cart',CartView.as_view()),
    path('cartview',ViewCart.as_view()),
    path('payment',Payment.as_view()),
    path('removecart',RejectcartView.as_view()),
    path('viewbookin',BookingView.as_view()),
    path('chpy',chpayment.as_view()),
    path('bill',BillinView.as_view()),
    path('retn',Billretn.as_view())
    # path('donator/',donator_urls.urls()),
    # path('admin/',admin_urls.urls())
]


def urls():
    return urlpatterns, 'user', 'user'