from django.shortcuts import render
from schedule.models import ScheduleRide
from notification.models import Notification
import datetime
from driver.models import Driver
from user.models import User
# Create your views here.

def schedule(request):
    obj=Driver.objects.all()
    context={
        'x':obj,
        # 'y':ob
    }
    ss = request.session["uid"]
    if request.method=='POST':
        obj=ScheduleRide()
        obj.user_id=ss
        # obj.driver_id='1'
        obj.driver_id=request.POST.get('driver')
        obj.place=request.POST.get('place')
        obj.starting_time=request.POST.get('stime')
        obj.ending_time=request.POST.get('etime')
        obj.date=datetime.date.today()
        obj.status='pending'
        obj.save()
    return render(request,'schedule/schedule.html',context)

def vschedule(request):
    obj=ScheduleRide.objects.filter(status='pending')
    context={
        'vv':obj
    }
    return render(request,'schedule/view_schedule.html',context)


def apr(request,idd):
    obj=ScheduleRide.objects.get(schedule_id=idd)
    obj.status='approved'
    obj.save()

    ob=Notification()
    ob.notification="your travel booking approved"
    ob.status="approved"
    ob.date=datetime.datetime.today()
    ob.time=datetime.datetime.now()
    ob.schedule_id=idd
    ob.save()
    return vschedule(request)

def rej(request,idd):
    obj=ScheduleRide.objects.get(schedule_id=idd)
    obj.status='rejected'
    obj.save()
    return vschedule(request)


def hist(request):
    ss = request.session["uid"]

    obj=ScheduleRide.objects.filter(driver_id=ss)
    context={
        'vv':obj
    }
    return render(request,'schedule/viewhistory.html',context)
def hisus(request):
    ss = request.session["uid"]

    obj=ScheduleRide.objects.filter(user_id=ss)
    context={
        'vv':obj
    }
    return render(request,'schedule/historyuser.html',context)



def viewloc(request):
    obj=ScheduleRide.objects.all()
    context={
        'kk': obj,
    }
    return render(request,'schedule/view_loc.html',context)

def vupdateloc(request):
    obj=ScheduleRide.objects.all()
    context={
        'pp':obj
    }
    return render(request,'schedule/view_loc_update.html',context)

def updatel(request,idd):
    obj=ScheduleRide.objects.get(schedule_id=idd)
    context={
        's':obj
    }
    if request.method=='POST':
        obj = ScheduleRide.objects.get(schedule_id=idd)
        # obj.user_id='1'
        obj.driver_id='1'
        obj.driver_id=request.POST.get('driver')
        obj.place=request.POST.get('place')
        obj.starting_time=request.POST.get('stime')
        obj.ending_time=request.POST.get('etime')
        obj.date=datetime.date.today()
        obj.save()
        return vupdateloc(request)
    return render(request,'schedule/update_loc.html',context)