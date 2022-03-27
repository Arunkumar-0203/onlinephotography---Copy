from django.contrib.auth.models import User
from django.views.generic import TemplateView
from django.shortcuts import render, redirect

from photography_app.models import UseR, PhotoGrapher, Exhibition, AddPhoto, Cart


class IndexView(TemplateView):
    template_name = 'admin/admin_index.html'


class UserView(TemplateView):
    template_name = 'admin/user_view.html'

    def get_context_data(self, **kwargs):
        context = super(UserView,self).get_context_data(**kwargs)

        user = UseR.objects.filter(user__last_name='0',user__is_staff='0')

        context['user'] = user

        return context

class PhotographerView(TemplateView):
    template_name = 'admin/view_photographer.html'

    def get_context_data(self, **kwargs):
        context = super(PhotographerView,self).get_context_data(**kwargs)

        photoGrapher = PhotoGrapher.objects.filter(user__last_name='0',user__is_staff='0')

        context['phr'] = photoGrapher

        return context


class ApproveView(TemplateView):
    def dispatch(self,request,*args,**kwargs):
        id=request.GET['id']
        user=User.objects.get(id=id)
        user.last_name='1'
        user.save()
        return render(request,'admin/admin_index.html',{'message':" Account Approved"})



class RejectView(TemplateView):
    def dispatch(self,request,*args,**kwargs):
        id=request.GET['id']
        user=User.objects.get(id=id)
        user.last_name='1'
        user.is_active='0'
        user.save()
        return render(request,'admin/admin_index.html',{'message':"Account Removed"})



class ViewUser(TemplateView):
    template_name = 'admin/userview.html'

    def get_context_data(self, **kwargs):

         context = super(ViewUser,self).get_context_data(**kwargs)

         USER = UseR.objects.filter(user__last_name='1',user__is_staff='0',user__is_active='1')
         context['us'] = USER
         return context


class Viewphotographer(TemplateView):
    template_name = 'admin/photographerview.html'

    def get_context_data(self, **kwargs):

         context = super(Viewphotographer,self).get_context_data(**kwargs)

         pho = PhotoGrapher.objects.filter(user__last_name='1',user__is_staff='0',user__is_active='1')
         context['ph'] = pho
         return context

class AddExhibition(TemplateView):
    template_name = 'admin/add_exhibition.html'
    def post(self,request,*args,**kwargs):

        ex = request.POST['Exhibition']
        Location = request.POST['location']
        Venue = request.POST['venue']
        Date = request.POST['date']
        Time = request.POST['time']
        exhibition = Exhibition()
        exhibition.exhi_name = ex
        exhibition.venue = Venue
        exhibition.date = Date
        exhibition.status = 'null'
        exhibition.time = Time
        exhibition.location = Location
        exhibition.save()
        return render(request,"admin/admin_index.html",{'message':"add exhibition"})

class ViewExhibition(TemplateView):
    template_name = 'admin/view_exhibition.html'
    def get_context_data(self,**kwargs):

        context = super(ViewExhibition,self).get_context_data(**kwargs)
        exhi = Exhibition.objects.filter(status='null')
        context['ex'] = exhi
        return context
class Rejectexhibition_view(TemplateView):
    def dispatch(self,request,*args,**kwargs):
        id = request.GET['id']
        ex = Exhibition.objects.get(id=id)
        ex.status = 'remove'
        ex.save()
        return render(request,'admin/view_exhibition.html',{'message':"Deleted Exhibition"})

class PhotoViews(TemplateView):
    template_name = 'admin/view_photos.html'
    def get_context_data(self, **kwargs):
        context = super(PhotoViews,self).get_context_data(**kwargs)
        Gallery = AddPhoto.objects.filter(status='null')
        context['gall'] = Gallery

        return context

class RejectViews(TemplateView):
    def dispatch(self,request,*args,**kwargs):
        pid = request.GET['id']
        photo = AddPhoto.objects.get(id=pid)
        photo.status = 'remove'
        photo.save()
        return render(request,'admin/admin_index.html',{'message':"Photo Removed"})


class ViewBoocking(TemplateView):
    template_name = 'admin/view_boocking.html'
    def get_context_data(self, **kwargs):
        context = super(ViewBoocking,self).get_context_data(**kwargs)
        g = Cart.objects.filter(delivery="paid",payment="null")
        context['gg'] = g
        return context


class TrackView(TemplateView):
    template_name = 'admin/track_delivery.html'
    def get_context_data(self, **kwargs):
        context = super(TrackView,self).get_context_data(**kwargs)
        h = Cart.objects.filter(delivery="paid",payment="Order Placed")
        context['ggg'] = h
        return context


class ApprovePayment(TemplateView):
    template_name = 'admin/view_boocking.html'
    def dispatch(self, request, *args, **kwargs):
        pyid = request.GET['id']

        py = Cart.objects.get(delivery="paid",photo_id=pyid)
        py.payment ="Order Placed"
        py.save()
        return redirect(request.META['HTTP_REFERER'])






