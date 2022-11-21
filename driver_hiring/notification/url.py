from django.conf.urls import url
from notification import views
urlpatterns=[
    url('notification/',views.noti),
    url('mng/',views.mng),
    url('app/(?P<idd>\w+)',views.adr,name='app'),
    url('rej/(?P<idd>\w+)',views.rdr,name='rej'),
    url('viewnoti/',views.vnoti),


]