from django.shortcuts import render
from notification.models import Notification
import datetime
# Create your views here.

def noti(request):
    if request.method=="POST":
        obj=Notification()
        obj.notification=request.POST.get('noti')
        obj.date=datetime.datetime.today()
        obj.time=datetime.datetime.now()
        obj.save()
    return render(request,'notification/notification.html')


def mng(request):
    obj=Notification.objects.all()
    context={
        'bb':obj
    }
    return render(request,'notification/view_noti_mng.html',context)


def adr(request,idd):
    obj = Notification.objects.get(notification_id=idd)
    obj.status = "approved"
    obj.save()
    return mng(request)



def rdr(request,idd):
    obj=Notification.objects.get(notification_id=idd)
    obj.status="Rejected"
    obj.delete()
    return mng(request)


def vnoti(request):
    # request.session["uid"]
    obj=Notification.objects.all()
    context={
        'aa': obj
    }

    return render(request,'notification/view_notificatiion.html',context)
