# -*- coding: utf-8 -*-
# Generated by Django 1.9.4 on 2016-03-14 02:49
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('events', '0002_auto_20150925_1127'),
    ]

    operations = [
        migrations.AlterField(
            model_name='event',
            name='auth_token',
            field=models.CharField(blank=True, max_length=100),
        ),
    ]