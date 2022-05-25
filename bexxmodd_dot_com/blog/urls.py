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
    path('logs/', PostListView.as_view(), name='blog-posts'),
    path('log/<slug:slug>/<int:pk>', PostDetailView.as_view(), name='post-detail'),
    path('log/new/', PostCreateView.as_view(), name='post-create'),
    path('log/<slug:slug>/<int:pk>/comment/',
         CommentCreateView.as_view(), name='comment-create'),
    path('log/<slug:slug>/<int:pk>/update/', PostUpdateView.as_view(), name='post-update'),
    path('log/<slug:slug>/<int:pk>/delete/', PostDeleteView.as_view(), name='post-delete'),
    path('', views.about, name='blog-about'),
    path('oss/', views.oss, name='blog-oss'),
    path('tag/<slug:tag_slug>', views.tagged, name='posts-by-tag'),
    path('.well-known/acme-challenge/RpPIL3rCO_2Zu_Jy-M6sld7TcWFFsnplp0tcg4yXXB8', views.read_file),
]
