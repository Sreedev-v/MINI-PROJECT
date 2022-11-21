from django.shortcuts import render
from payment.models import Payment
from user.models import User
import datetime
from django.http import HttpResponseRedirect
# Create your views here.

def pay(request,idd):
    obj = User.objects.all()
    context = {
        'objval': obj
    }

    # ss=request.session["uid"]
    if request.method=='POST':
        obj=Payment()
        obj.schedule_id=idd
        obj.amount=request.POST.get('amt')
        obj.date=datetime.date.today()
        obj.time=datetime.datetime.now()
        obj.user_id=obj.schedule.user_id
        obj.status='pending'
        obj.save()
        return HttpResponseRedirect("/schedule/vsche/")
    return render(request,'payment/payment.html',context)


def vpay(request):
    ss=request.session["uid"]

    obj=Payment.objects.filter(user_id=ss,status='pending')
    context={
        'cc':obj
    }
    return render(request,'payment/view_payment.html',context)


def update(request,idd):
    obj = Payment.objects.all()
    context = {
        'vv': obj
    }
    ss = request.session["uid"]
    if request.method=='POST':
        obj=Payment.objects.get(pay_id=idd)
        obj.user_id = ss
        obj.amount = request.POST.get('amt')
        obj.date = datetime.date.today()
        obj.time = datetime.datetime.now()

        obj.save()
        return vpayupd(request)
    return render(request,'payment/update_pay.html',context)


def vpayupd(request):
    obj=Payment.objects.all()
    context={
        'dd':obj
    }
    return render(request,'payment/view_pay_update.html',context)

def payed(request,idd):
    obj = Payment.objects.get(pay_id=idd)
    context = {
        'objval': obj
    }
    ob=Payment.objects.get(pay_id=idd)
    ob.status="paid"
    ob.save()
    return render(request,'payment/payed.html',context)