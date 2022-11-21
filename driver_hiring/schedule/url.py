from django.conf.urls import url
from schedule import views
urlpatterns=[
    url('schedule/',views.schedule),
    url('update/(?P<idd>\w+)',views.updatel),
    url('vsche/',views.vschedule),
    url('viewloc/',views.viewloc),
    url('vuploc/',views.vupdateloc),
    url('appr/(?P<idd>\w+)',views.apr,name='appr'),
    url('reje/(?P<idd>\w+)',views.rej,name='reje'),
    url('hss/', views.hist),
    url('hsu/', views.hisus),

]