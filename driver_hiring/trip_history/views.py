from django.shortcuts import render
from trip_history.models import TripHistory
from payment.models import Payment
from schedule.models import ScheduleRide
import datetime
# Create your views here.

def trip(request):
    # ss = request.session["uid"]
    # if request.method=='POST':
    #     obj=TripHistory()
    #     obb=Payment()
    #     obj.user_id=ss
    #     obj.place=request.POST.get('place')
    #     obj.starting_time=request.POST.get('st')
    #     obj.ending_time=request.POST.get('et')
    #     obj.total_cost=request.POST.get('ta')
    #     obj.save()

    obj = TripHistory.objects.all()
    context = {
        'vv': obj
    }
    return render(request,'trip_history/trip_history.html',context)

def vtrip(request):
    obj=TripHistory.objects.all()
    context={
        'vv':obj
    }
    return render(request,'trip_history/view_triphistory.html',context)
