
from django.contrib.auth.models import User
from django.shortcuts import render
from django.views.generic import TemplateView

from photography_app.models import AddPhoto, Exhibition, Cart, UseR


class IndexView(TemplateView):
    template_name = 'user/user_index.html'

class ViewGallery(TemplateView):
    template_name = 'user/galleryview.html'
    def get_context_data(self, **kwargs):
        context = super(ViewGallery,self).get_context_data(**kwargs)
        Gallery = AddPhoto.objects.filter(status='null')

        context['gall'] = Gallery
        return context
class Exhibition_View(TemplateView):
    template_name = 'user/exhibition.html'
    def get_context_data(self, **kwargs):
        context = super(Exhibition_View,self).get_context_data(**kwargs)
        exhibitions = Exhibition.objects.all()
        context['Ex'] = exhibitions
        return context
class ShopView(TemplateView):
    template_name = 'user/view_shop.html'
    def get_context_data(self, **kwargs):
        context = super(ShopView,self).get_context_data(**kwargs)
        Gallery = AddPhoto.objects.filter(status='null')
        context['gall'] = Gallery
        return context

class CartView(TemplateView):
    template_name = 'user/view_shop.html'
    def dispatch(self,request,*args,**kwargs):
        pid = request.GET['id']

        ca = Cart()

        ca.user = User.objects.get(id=self.request.user.id)
        ca.photo = AddPhoto.objects.get(pk = pid)
        ca.payment = 'null'
        ca.status = 'cart'
        ca.delivery = 'null'
        ca.save()
        return render(request,'user/view_shop.html',{'message': "Add to cart"})

class ViewCart(TemplateView):
    template_name = 'user/view_cart.html'


    def get_context_data(self, **kwargs):
         context = super(ViewCart,self).get_context_data(**kwargs)
         # user = User.objects.get(id=self.request.user.id)
         cr = self.request.user.id
         ct = Cart.objects.filter(status='cart',user_id=cr,delivery='null')

         total=0
         for i in ct:
          total = total + int(i.photo.price)


         context['crt'] = ct
         context['asz'] = total
         return context

class Payment(TemplateView):
    template_name = 'user/checkout.html'
    def get_context_data(self, **kwargs):
         context = super(Payment,self).get_context_data(**kwargs)
         # user = User.objects.get(id=self.request.user.id)

         cr = self.request.user.id
         ct = Cart.objects.filter(status='cart',user_id=cr,delivery='null')

         total=0
         for i in ct:
          total = total + int(i.photo.price)
         print(total)

         context['crt'] = ct
         context['asz'] = total
         return context

class RejectcartView(TemplateView):
    def dispatch(self,request,*args,**kwargs):
        id = request.GET['id']
        cart = Cart.objects.get(id=id)
        cart.status = 'remove'
        cart.save()
        return render(request,'user/user_index.html',{'message':"Photo Removed"})



class chpayment(TemplateView):
    def dispatch(self,request,*args,**kwargs):

        pid = self.request.user.id
        p_id=request.GET['id']

        ch = Cart.objects.filter(user_id=pid,status='cart',photo_id=p_id)
        #

        print(ch)
        for i in ch:
            i.delivery = 'paid'
            i.billstatus = "null1"
            i.save()
            a = i.photo_id

            ph = AddPhoto.objects.filter(id=a)
            for j in ph:
                j.status = "paid"
                j.save()



        return render(request,'user/user_index.html',{'message': "apyed successfully"})



class BookingView(TemplateView):
    template_name = 'user/view_bookign.html'
    def get_context_data(self, **kwargs):
        context = super(BookingView,self).get_context_data(**kwargs)
        usid=self.request.user.id
        b = Cart.objects.filter(status='cart',user_id=usid,delivery='paid')

        context['booking'] = b
        return context


class BillinView(TemplateView):
    template_name = 'user/billing.html'

    def get_context_data(self, **kwargs):
         context = super(BillinView,self).get_context_data(**kwargs)
         # user = User.objects.get(id=self.request.user.id)

         cr = self.request.user.id
         ctt = Cart.objects.filter(status='cart',user_id=cr,delivery='paid',payment="Order Placed",billstatus="null1")
         user = UseR.objects.filter(user_id=cr)

         total=0
         for i in ctt:
          total = total + int(i.photo.price)
          i.billstatus= "billview"
          i.save()
         print(total)

         context['crtt'] = ctt
         print(ctt)
         context['asz'] = total
         print(total)
         context['user'] = user
         return context

class Billretn(TemplateView):
    template_name = 'user/user_index.html'
    # def post(self, request,*args,**kwargs):
    #      # context = super(Billretn,self).get_context_data(**kwargs)
    #      crr = self.request.user.id
    #      p_id=request.GET['id']
    #      cttt = Cart.objects.filter(status='cart',user_id=crr,delivery='paid',payment="Order Placed",photo_id=p_id)
    #      # user = UseR.objects.filter(user_id=crr)
    #      for k in cttt:
    #          k.billstatus = "billview"
    #          k.save()

