from django.shortcuts import render
from driver.models import Driver
from login.models import Login
# Create your views here.

def driver(request):
    obk=""
    if request.method=="POST":
        obj=Driver()
        obj.name=request.POST.get('uname')
        obj.gender=request.POST.get('gen')
        obj.location=request.POST.get('loc')
        obj.vehicle_type=request.POST.get('vtype')
        obj.vehicle_number=request.POST.get('vnbr')
        obj.licence_number=request.POST.get('lno')
        obj.phone_no=request.POST.get('phn')
        obj.email=request.POST.get('mail')
        obj.password=request.POST.get('pwd')
        obj.save()

        ob=Login()
        ob.username=obj.name
        ob.password=obj.password
        ob.type="driver"
        ob.uid=obj.driver_id
        ob.save()

        obk="Registered Successfully!"
    context={
            'msg':obk
        }
    return render(request,'driver/driver_reg.html',context)


def vdrupda(request):
    ss=request.session["uid"]
    obj=Driver.objects.filter(driver_id=ss)
    context={
        'xx':obj
    }
    return render(request,'driver/view_drvr_update.html',context)


def update(request,idd):
    obj = Driver.objects.get(driver_id=idd)
    context = {
        'k': obj
    }
    if request.method == "POST":
        obj = Driver.objects.get(driver_id=idd)
        obj.name=request.POST.get('uname')
        obj.gender = request.POST.get('gen')
        obj.location = request.POST.get('loc')
        obj.vehicle_type = request.POST.get('vtype')
        obj.vehicle_number = request.POST.get('vnbr')
        obj.licence_number = request.POST.get('lno')
        obj.phone_no = request.POST.get('phn')
        obj.email = request.POST.get('mail')
        obj.password = request.POST.get('pwd')
        obj.save()

        return vdrupda(request)
    return render(request, 'driver/update_driver.html', context)



def vd(requset):
    obj=Driver.objects.all()
    context={
        'xx':obj
    }
    return render(requset,'driver/viewdriver.html',context)

def mngdriver(request):
    obj=Driver.objects.all()
    context={
        'y': obj
    }
    return render(request,'driver/view_mng_driver.html',context)


def appdr(request,idd):
    obj = Driver.objects.get(driver_id=idd)
    obj.status = "approve"
    obj.save()
    return mngdriver(request)



def rejdr(requset,idd):
    obj = Driver.objects.get(driver_id=idd)
    obj.status="reject"
    obj.delete()
    return mngdriver(requset)
    # return render(requset,'driver/view_mng_driver.html')