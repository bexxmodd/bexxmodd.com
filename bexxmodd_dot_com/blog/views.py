from django.shortcuts import render, get_object_or_404
from django.contrib.auth.mixins import LoginRequiredMixin, UserPassesTestMixin
from django.views.generic import (
    ListView, DetailView, CreateView, UpdateView, DeleteView)
from .models import Post
from .forms import CommentForm


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
    paginate_by = 5


class PostDetailView(DetailView):
    model = Post

    def post_detail(self, request, slug):
        template_name = 'post_detail.html'
        post = get_object_or_404(Post, slug=slug)
        comments = post.comments.filter(active=True)
        new_comment = None

        # Comment posted
        if request.method == 'POST':
            comment_form = CommentForm(data=request.POST)
            if comment_form.is_valid():
                # Create Comment object but don't save to database yet
                new_comment = comment_form.save(commit=False)
                # Assign the current post to the comment
                new_comment.post = post
                # Save the comment to the database
                new_comment.save()
        else:
            comment_form = CommentForm()

        return render(request, template_name, {'post': post,
                                                'comments': comments,
                                                'new_comment': new_comment,
                                                'comment_form': comment_form})


class PostCreateView(LoginRequiredMixin, CreateView):
    model = Post
    fields = ['title', 'content']

    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)


class PostUpdateView(LoginRequiredMixin, UserPassesTestMixin, UpdateView):
    model = Post
    fields = ['title', 'content']

    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)

    def test_func(self) -> bool:
        post = self.get_object()
        return self.request.user == post.author


class PostDeleteView(LoginRequiredMixin, UserPassesTestMixin, DeleteView):
    model = Post
    success_url = '/blog/'

    def test_func(self) -> bool:
        post = self.get_object()
        return self.request.user == post.author
        


def about(request):
    return render(request, 'blog/about.html', {'title': 'About'})

def resume(request):
    return render(request, 'blog/resume.html', {'title': 'Resume'})

def projects(request):
    return render(request, 'blog/projects.html', {'title': 'Projects'})
