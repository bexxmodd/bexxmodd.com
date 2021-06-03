from django.urls import path
from .views import PostListView
from . import views

urlpatterns = [
    path('blog/', PostListView.as_view(), name='blog-posts'),
    path('', views.about, name='blog-about'),
    path('projects/', views.projects, name='blog-projects')
]
