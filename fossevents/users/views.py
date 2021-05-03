from django.contrib.auth import logout as auth_logout
from django.contrib.auth import login as django_login
from django.urls import reverse
from django.http.response import HttpResponseRedirect
from django.contrib.auth import views as auth_views


# class CustomLogin(auth_views.LoginView):
#     if request.user.is_authenticated:
#         return HttpResponseRedirect(reverse('home'))

#     def form_valid(self, form):
#         if self.request.user.is_authenticated:
#             return HttpResponseRedirect(reverse('home'))
#         django_login(self.request, form.get_user())
#         return HttpResponseRedirect(self.get_success_url())


def logout(request, *args, **kwargs):
    auth_logout(request)

    return HttpResponseRedirect(reverse('users:login'))
