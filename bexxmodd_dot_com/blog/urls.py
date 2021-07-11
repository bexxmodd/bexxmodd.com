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
from bexxmodd_dot_com import settings

urlpatterns = [
    path('blog/', PostListView.as_view(), name='blog-posts'),
    path('post/<int:pk>/', PostDetailView.as_view(), name='post-detail'),
    path('post/new/', PostCreateView.as_view(), name='post-create'),
    path('post/<int:pk>/comment/',
         CommentCreateView.as_view(), name='comment-create'),
    path('post/<int:pk>/update/', PostUpdateView.as_view(), name='post-update'),
    path('post/<int:pk>/delete/', PostDeleteView.as_view(), name='post-delete'),
    path('', views.about, name='blog-about'),
    path('resume/', views.resume, name='blog-resume'),
    path('projects/', views.projects, name='blog-projects'),
    path('tag/<slug:tag_slug>', views.tagged, name='posts-by-tag'),
    path(r'^.well-known/acme-challenge/.*$',
         views.acme_challenge, name='acme-challenge')
]

if settings.LETSENCRYPT_URL:
    from django.http import HttpResponse
    urlpatterns += [
        url(
            settings.LETSENCRYPT_URL,
            lambda r: HttpResponse(settings.LETSENCRYPT_RESPONSE, content_type='text/plain'),
        ),
    ]
