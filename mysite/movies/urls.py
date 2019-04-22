from django.urls import path

from . import views

app_name = 'movies'
urlpatterns = [

    path('showmovie/', views.show, name='show'),
]