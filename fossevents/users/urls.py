from django.conf.urls import url

from .views import logout
from django.contrib.auth import views as auth_views

app_name = 'users '
urlpatterns = [
    url(r'^login/$',  auth_views.LoginView.as_view(template_name='users/login.html',
        redirect_authenticated_user=True), name="login"),
    url(r'^logout/$', logout, name="logout"),
]
