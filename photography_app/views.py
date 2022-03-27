from django.contrib.auth import login
from django.shortcuts import render, redirect
from django.contrib.auth.models import User,auth
# Create your views here.
from django.views.generic import TemplateView
from  photography_app.models import PhotoGrapher,UserType,UseR, AddPhoto


class IndexView(TemplateView):
    template_name = 'index.html'


class LoginView(TemplateView):
    template_name = 'login.html'
    def post(self, request, *args, **kwargs):
        username = request.POST['username']
        password= request.POST['password']
        user = auth.authenticate(username=username,password=password)

        if user is not None:
            login(request,user)
            if user.last_name == '1':
                if user.is_superuser:
                    return redirect('/admin')
                elif UserType.objects.get(user_id=user.id).type == "photographer":
                    return redirect('/photographer')
                elif UserType.objects.get(user_id=user.id).type == "user":
                    return redirect('/user1')

            else:
                return render(request,'login.html',{'message':" User Account Not Authenticated"})
        else:
            return render(request,'login.html',{'message':"Invalid Username or Password"})


class Photographer_regView(TemplateView):

    template_name ='registrationph.html'
    def post(self, request,*args,**kwargs):
        fullname = request.POST['name']
        address = request.POST['address']
        contact = request.POST['contact']
        email = request.POST['email']
        username = request.POST['username']
        Password = request.POST['password']

        try:
             user = User.objects.create_user(username=username,password=Password,first_name=fullname,email=email,last_name=0)
             user.save()
             reg = PhotoGrapher()
             reg.user = user
             reg.address = address
             reg.contact = contact
             reg.save()
             usertype = UserType()
             usertype.user = user
             usertype.type = "photographer"
             usertype.save()
             return redirect('phreg')
        except:
             messages = "Enter Another Username"
             return render(request,'registrationph.html',{'messages':messages})



class UserregView(TemplateView):
    template_name = 'userregistration.html'
    def post(self, request,*args,**kwargs):
        fullname = request.POST['name']
        address = request.POST['address']
        contact = request.POST['contact']
        email = request.POST['email']
        username = request.POST['username']
        Password = request.POST['password']

        try:
             user = User.objects.create_user(username=username,password=Password,first_name=fullname,email=email,last_name=0)
             user.save()
             reg = UseR()
             reg.user = user
             reg.address = address
             reg.contact = contact
             reg.save()
             usertype = UserType()
             usertype.user = user
             usertype.type = "user"
             usertype.save()
             return redirect('user')
        except:
             messages = "Enter Another Username"
             return render(request,'registrationph.html',{'messages':messages})

class ViewPHOTO(TemplateView):
    template_name = 'index.html'
    def get_context_data(self, **kwargs):
        context = super(ViewPHOTO,self).get_context_data(**kwargs)
        user=User.objects.get(id=self.request.user.id)
        ph = AddPhoto.objects.filter(user_id=user,status='null')
        context['pho'] = ph
        return context

