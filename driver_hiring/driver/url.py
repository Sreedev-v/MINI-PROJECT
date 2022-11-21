from django.conf.urls import url
from driver import views


urlpatterns=[
    url('drivr_reg/',views.driver),
    url('vdrup/',views.vdrupda),
    url('updatedr/(?P<idd>\w+)',views.update),
    url('mngdr/',views.mngdriver),
    url('vdr/',views.vd),
    url('appdr/(?P<idd>\w+)',views.appdr,name="driver_app"),
    url('rejdr/(?P<idd>\w+)',views.rejdr,name="driver_rej")

]