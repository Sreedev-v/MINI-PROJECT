from django.conf.urls import url
from temp import views

urlpatterns=[
    url('admin/',views.admin),
    url('driver/',views.driver),
    url('user/',views.user),
    url('home/',views.home)

]