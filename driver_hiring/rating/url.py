from django.conf.urls import url
from rating import views


urlpatterns=[
 url('rating/',views.rating),
    url('view/',views.viewrat),
    url('view1/', views.viewrad),

]
