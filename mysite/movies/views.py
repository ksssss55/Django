from django.shortcuts import render
from django.http import HttpResponse
from .models import Moives



def show(request):
    mylist = Moives.objects.all()
    return render(request, 'movies/showmovie.html', locals())
