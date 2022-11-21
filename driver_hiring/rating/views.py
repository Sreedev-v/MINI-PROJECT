from django.shortcuts import render
from rating.models import Rating
from driver.models import Driver
import datetime
# Create your views here.
def rating(request):
    ss= request.session["uid"]
    obj = Driver.objects.all()
    context = {
        'kk': obj,
    }
    if request.method=='POST':
        ob=Rating()
        ob.rating=request.POST.get('rate')
        ob.user_id=ss
        ob.driver_id=request.POST.get('dd')
        ob.date=datetime.datetime.today()
        ob.time=datetime.datetime.now()
        ob.save()
    return render(request,'rating/rating.html',context)

def viewrat(request):
    obj=Rating.objects.all()
    context={
        'kk':obj,
    }
    return render(request,'rating/viewrating.html',context)

def viewrad(request):
    # ss= request.session["uid"]

    obj=Rating.objects.all()
    context={
        'kk':obj,
    }
    return render(request,'rating/vwadmin.html',context)