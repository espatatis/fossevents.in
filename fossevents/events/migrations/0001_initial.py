# Generated by Django 3.2.2 on 2021-05-13 07:13

from django.db import migrations, models
import django.db.models.deletion
import django_markdown.models
import uuid


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Event',
            fields=[
                ('id', models.UUIDField(default=uuid.uuid4, editable=False, primary_key=True, serialize=False)),
                ('created', models.DateTimeField(auto_now_add=True)),
                ('modified', models.DateTimeField(auto_now=True)),
                ('name', models.CharField(max_length=100, verbose_name='name')),
                ('location', models.CharField(blank=True, max_length=200, verbose_name='loc')),
                ('description', django_markdown.models.MarkdownField(verbose_name='description')),
                ('start_date', models.DateTimeField(verbose_name='start date')),
                ('end_date', models.DateTimeField(blank=True, verbose_name='end date')),
                ('homepage', models.URLField(blank=True, verbose_name='homepage')),
                ('is_published', models.BooleanField(default=False, verbose_name='is published')),
                ('auth_token', models.CharField(blank=True, max_length=50)),
                ('owner_email', models.EmailField(help_text='An email with the edit link for this event would be sent to this address.             Please provide a vaild address here.', max_length=256, verbose_name="owner's email address")),
            ],
            options={
                'verbose_name': 'event',
                'verbose_name_plural': 'events',
                'ordering': ('-start_date',),
            },
        ),
        migrations.CreateModel(
            name='EventReview',
            fields=[
                ('id', models.UUIDField(default=uuid.uuid4, editable=False, primary_key=True, serialize=False)),
                ('created', models.DateTimeField(auto_now_add=True)),
                ('modified', models.DateTimeField(auto_now=True)),
                ('comment', django_markdown.models.MarkdownField(blank=True, null=True, verbose_name='Notes')),
                ('is_approved', models.BooleanField()),
                ('event', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='reviews', to='events.event')),
            ],
            options={
                'ordering': ('-created',),
            },
        ),
    ]
