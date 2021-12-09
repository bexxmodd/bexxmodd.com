from django.conf.urls import url
from django.urls import path
from .views import (
    PostListView,
    PostDetailView,
    PostCreateView,
    PostUpdateView,
    PostDeleteView,
    CommentCreateView
)
from . import views

urlpatterns = [
    path('blog/', PostListView.as_view(), name='blog-posts'),
    path('post/<slug:slug>/<int:pk>', PostDetailView.as_view(), name='post-detail'),
    path('post/new/', PostCreateView.as_view(), name='post-create'),
    path('post/<slug:slug>/<int:pk>/comment/',
         CommentCreateView.as_view(), name='comment-create'),
    path('post/<slug:slug>/<int:pk>/update/', PostUpdateView.as_view(), name='post-update'),
    path('post/<slug:slug>/<int:pk>/delete/', PostDeleteView.as_view(), name='post-delete'),
    path('', views.about, name='blog-about'),
    path('resume/', views.resume, name='blog-resume'),
    path('oss/', views.oss, name='blog-oss'),
    path('tag/<slug:tag_slug>', views.tagged, name='posts-by-tag'),
    path('.well-known/acme-challenge/5wcpKi1Z9hJFFZ3toG9sE6-2M-Dj9WTD6CMQS5IcPK0', views.read_file),
]
