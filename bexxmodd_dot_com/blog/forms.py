from .models import Comment, Post
from django import forms

class PostForm(forms.ModelForm):
    class Meta:
        model = Post
        fields = [
            'title',
            'content',
            'tags',
        ]

class CommentForm(forms.ModelForm):
    class Meta:
        model = Comment
        fields = ('name', 'email', 'body')

# class EmailPostForm(forms.Form):
#     name = forms.CharField(max_lengh=25)
#     email = forms.EmailField()
#     to = forms.EmailField()
#     comments = forms.CharField(required=False, widget=forms.Textarea)