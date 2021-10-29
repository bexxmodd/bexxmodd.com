from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
from django.urls import reverse
from taggit.managers import TaggableManager
from django.contrib.contenttypes.fields import GenericRelation


class Post(models.Model):
    """Blog Post model"""
    title = models.CharField(max_length=150)
    content = models.TextField()
    date_posted = models.DateTimeField(default=timezone.now)
    author = models.ForeignKey(User, on_delete=models.CASCADE)
    slug = models.SlugField(unique=True, max_length=120)
    tags = TaggableManager()
    hit_count_generic = GenericRelation(HitCount, object_id_field='object_p',
                         related_query_name='hit_count_generic_relation')

    def __str__(self):
        return self.title

    def get_absolute_url(self):
        return reverse('post-detail', kwargs={'slug': self.slug,
                                              'pk': self.pk})


class Comment(models.Model):
    """Comment model for posts"""
    post = models.ForeignKey(
        Post, related_name='comments', on_delete=models.CASCADE)
    name = models.CharField(max_length=130)
    email = models.EmailField()
    body = models.TextField(max_length=240)
    created_on = models.DateTimeField(auto_now_add=True)
    active = models.BooleanField(default=False)

    class Meta:
        ordering = ['created_on']

    def __str__(self):
        return f'Comment {self.body} by {self.name}'

    def get_absolute_url(self):
        return reverse('post-detail', kwargs={'slug': self.slug,
                                              'pk': self.post.pk})
