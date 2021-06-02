from django.urls import path
from . import views

urlpatterns = [
    path('home/', views.home, name='blog-posts'),
    path('', views.about, name='blog-about'),
    path('projects/', views.projects, name='blog-projects')
]