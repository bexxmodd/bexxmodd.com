from django.shortcuts import render
from django.views.generic import ListView
from .models import Post


def home(request):
    context = {
        'posts': Post.objects.all()
    }
    return render(request, 'blog/posts.html', context)

class PostListView(ListView):
    model = Post
    template_name = 'blog/posts.html'
    context_object_name = 'posts'
    ordering = ['-date_posted']

def about(request):
    return render(request, 'blog/about.html', {'title': 'About'})

def projects(request):
    return render(request, 'blog/projects.html', {'title': 'Projects'})