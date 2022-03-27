from django.contrib.auth.models import User
from django.core.files.storage import FileSystemStorage
from django.shortcuts import render
from django.views.generic import TemplateView

from photography_app.models import AddPhoto, Exhibition


class IndexView(TemplateView):
    template_name = 'photographer/photographer_index.html'

class AddPhotos(TemplateView):
    template_name = 'photographer/add_photos.html'
    def post(self,request,*args,**kwargs):
        user=User.objects.get(id=self.request.user.id)
        phnmae = request.POST['photoname']
        des = request.POST['description']
        Price = request.POST['Price']
        Images= request.FILES['images']
        files = FileSystemStorage()
        ffil = files.save(Images.name,Images)
        photoos = AddPhoto()
        photoos.photo_name = phnmae
        photoos.description = des
        photoos.status = 'null'
        photoos.delivery = 'null'
        photoos.price = Price
        photoos.image = ffil
        photoos.user = user
        photoos.save()
        return render(request,'photographer/add_photos.html',{'message':"Add Photos"})

class PhotoView(TemplateView):
    template_name = 'photographer/view photos.html'
    def get_context_data(self, **kwargs):
        context = super(PhotoView,self).get_context_data(**kwargs)
        user=User.objects.get(id=self.request.user.id)
        ph = AddPhoto.objects.filter(user_id=user,status='null')
        context['pho'] = ph
        return context
class RejectView(TemplateView):
    def dispatch(self,request,*args,**kwargs):
        id = request.GET['id']
        photo = AddPhoto.objects.get(id=id)
        photo.status = 'remove'
        photo.save()
        return render(request,'photographer/photographer_index.html',{'message':"Photo Removed"})

class ExhibitionView(TemplateView):
    template_name = 'photographer/view exhibition.html'
    def get_context_data(self, **kwargs):
        context = super(ExhibitionView,self).get_context_data(**kwargs)
        exhibition = Exhibition.objects.all()
        context['exh'] = exhibition
        return context

