from django.conf.urls import url
from payment import views

urlpatterns=[
    url('payment/(?P<idd>\w+)',views.pay,name="py2"),
    url('vpaym/',views.vpay),
    url('update/(?P<idd>\w+)',views.update),
    url('vupd/',views.vpayupd),
    url('payed1//(?P<idd>\w+)', views.payed, name="py1"),

]