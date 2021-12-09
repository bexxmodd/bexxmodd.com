import json
import requests
from django import template
from django.template.defaultfilters import stringfilter

register = template.Library()

# import datetime

# @register.simple_tag
# def current_time(format_string):
#     return datetime.datetime.now().strftime(format_string)

@register.simple_tag
def project_stars(url):
    return json.loads(requests.get(url).text)['stargazers_count']

@register.simple_tag
def project_forks(url) -> str:
    return json.loads(requests.get(url).text)['forks']
