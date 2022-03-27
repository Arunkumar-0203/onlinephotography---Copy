from django.db import models
from django.contrib.auth.models import User

class UserType(models.Model):
    user = models.ForeignKey(User,on_delete=models.CASCADE)
    type = models.CharField(max_length=50)

class PhotoGrapher(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, null=True)
    contact = models.CharField(max_length=100,null=True)
    address = models.CharField(max_length=100,null=True)

class UseR(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, null=True)
    contact = models.CharField(max_length=100,null=True)
    address = models.CharField(max_length=100,null=True)

class Exhibition(models.Model):
    exhi_name = models.CharField(max_length=100,null=True)
    venue = models.CharField(max_length=100,null=True)
    date = models.DateField(max_length=50,null=True)
    time = models.TimeField(max_length=50,null=True)
    location = models.CharField(max_length=100,null=True)
    status = models.CharField(max_length=100,null=True)

class AddPhoto(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, null=True)
    photo_name = models.CharField(max_length=100,null=True)
    description = models.CharField(max_length=100,null=True)
    price = models.CharField(max_length=100,null=True)
    image = models.ImageField('images/', null=True)
    status = models.CharField(max_length=100,null=True)


class Cart(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, null=True)
    photo = models.ForeignKey(AddPhoto, on_delete=models.CASCADE, null=True)
    payment = models.CharField(max_length=100,null=True)
    status = models.CharField(max_length=100,null=True)
    delivery = models.CharField(max_length=100,null=True)
    billstatus = models.CharField(max_length=100,null=True)