from django.shortcuts import render
from django.http import HttpResponse

def home(request: str):
    return HttpResponse('<h1>Blog Home</h1>')

def about(request: str):
    return HttpResponse('<h1>Blog About</h1>')