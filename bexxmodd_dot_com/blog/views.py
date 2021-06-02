from django.shortcuts import render

posts = [
    {
        'autho': 'Beka Modebadze',
        'title': 'Test Post',
        'content': 'First test content',
        'date_posted': 'June 01, 2021'
    },
    {
        'autho': 'Beka Modebadze',
        'title': 'Second Post',
        'content': 'Second test content',
        'date_posted': 'June 02, 2021'
    }
]

def home(request):
    context = {
        'posts': posts
    }
    return render(request, 'blog/posts.html', context)

def about(request):
    return render(request, 'blog/about.html', {'title': 'About'})

def projects(request):
    return render(request, 'blog/projects.html', {'title': 'Projects'})