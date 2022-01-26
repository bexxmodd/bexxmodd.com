from django.http.response import HttpResponse
from .forms import CommentForm
from django.shortcuts import render, get_object_or_404
from django.contrib.auth.mixins import LoginRequiredMixin, UserPassesTestMixin
from django.views.generic import (
    ListView, DetailView, CreateView, UpdateView, DeleteView)
from .models import Post, Comment
from taggit.models import Tag
from hitcount.views import HitCountDetailView


def home(request):
    common_tags = Post.tags.most_common()[:4]
    context = {
        'posts': Post.objects.all(),
        'commong_tags': common_tags,
    }
    return render(request, 'blog/archive.html', context)


class PostListView(ListView):
    model = Post
    template_name = 'blog/archive.html'
    context_object_name = 'posts'
    ordering = ['-date_posted']
    paginate_by = 5


class PostDetailView(HitCountDetailView):
    model = Post
    count_hit = True

    def get_context_data(self, **kwargs):
        context = super(PostDetailView, self).get_context_data(**kwargs)
        context.update({
            'popular_posts':
                Post.objects.order_by('-hit_count_generic__hits')[:3],
        })
        return context

    def get_page_title(self, context):
        print(context.title)
        return context["model"].title

class CommentView(DetailView):
    model = Comment


class PostCreateView(LoginRequiredMixin, CreateView):
    model = Post
    fields = ['title', 'content', 'tags']

    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)


class CommentCreateView(CreateView):
    model = Comment
    fields = ['name', 'email', 'body']

    def form_valid(self, form):
        form.instance.post_id = self.kwargs['pk']
        form.instance.slug = self.kwargs['slug']
        return super().form_valid(form)


class PostUpdateView(LoginRequiredMixin, UserPassesTestMixin, UpdateView):
    model = Post
    fields = ['title', 'content', 'tags']

    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)

    def test_func(self) -> bool:
        post = self.get_object()
        return self.request.user == post.author


class PostDeleteView(LoginRequiredMixin, UserPassesTestMixin, DeleteView):
    model = Post
    success_url = '/log/'

    def test_func(self) -> bool:
        post = self.get_object()
        return self.request.user == post.author


def tagged(request, tag_slug):
    tag = get_object_or_404(Tag, slug=tag_slug)
    posts = Post.objects.filter(tags=tag)
    context = {
        'tag': tag,
        'posts': posts,
    }
    return render(request, 'blog/archive.html', context)


def about(request):
    return render(request, 'blog/about.html', {'title': 'About'})


def blog_like(request, pk):
    post = get_object_or_404(Post, id=request.POST.get("post_id"))
    post.claps.add(request)

def oss(request):
    return render(request, 'blog/OSS.html', {'title': 'OSS'})

def read_file(request):
    import os
    print(os.getcwd())
    f = open('/app/bexxmodd_dot_com/blog/static/docu/certbot.txt', 'r')
    file_content = f.read()
    f.close()
    return HttpResponse(file_content, content_type="text/plain")



