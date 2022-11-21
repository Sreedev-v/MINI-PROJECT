from django.conf.urls import url
from trip_history import views
urlpatterns=[
    url('trip/',views.trip),
    url('view/',views.vtrip)

]