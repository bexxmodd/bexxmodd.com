# Generated by Django 3.2.3 on 2021-12-08 20:21

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0008_like'),
    ]

    operations = [
        migrations.DeleteModel(
            name='Like',
        ),
    ]
