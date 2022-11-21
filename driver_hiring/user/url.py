from django.conf.urls import url
from user import views

urlpatterns=[
    url('user/',views.user),
    url('vmngu/',views.vmnguser),
    url('aprv/(?P<idd>\w+)',views.ap),
    url('rjct/(?P<idd>\w+)',views.rj),
    url('vupdate/',views.vupdate),
    url('updateus/(?P<idd>\w+)',views.updateu),
    # url('block/',views.blku),
    # url('unblck/',views.ublku),


]