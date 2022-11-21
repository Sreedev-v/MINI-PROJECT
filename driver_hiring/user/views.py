from django.shortcuts import render
from user.models import User
from login.models import Login
# Create your views here.

def user(request):
    obk=""
    if request.method=='POST':
        obj=User()
        obj.name=request.POST.get('name')
        obj.gender=request.POST.get('gnd')
        obj.age=request.POST.get('age')
        obj.location=request.POST.get('lc')
        obj.phone_number=request.POST.get('pn')
        obj.email=request.POST.get('ad')
        obj.password=request.POST.get('pss')
        obj.save()

        ob=Login()
        ob.username=obj.name
        ob.password=obj.password
        ob.type="user"
        ob.uid=obj.user_id
        ob.status="block"
        ob.save()

        obk="Registered Successfully!"
    context={
            'msg':obk
        }
    return render(request,'user/user_reg.html',context)


def vmnguser(request):
    obj=User.objects.all()
    context={
        'dd':obj
    }
    return render(request,'user/view_mng_user.html',context)


def ap(request,idd):
    obj=User.objects.get(user_id=idd)
    obj.status='Approved'
    obj.save()

    oblog=Login.objects.get(uid=idd,type='user')
    oblog.status="open"
    oblog.save()
    return vmnguser(request)

def rj(request,idd):
    obj=User.objects.get(user_id=idd)
    obj.status='Rejected'
    obj.save()

    oblog = Login.objects.get(uid=idd, type='user')
    oblog.status = "block"
    oblog.save()


    return vmnguser(request)


def vupdate(request):
    ss=request.session["uid"]
    obj=User.objects.filter(user_id=ss)
    context={
        'kk':obj
    }
    return render(request,'user/view_user_update.html',context)


def updateu(request,idd):
    obj=User.objects.get(user_id=idd)
    context={
        'tt':obj
    }
    if request.method=="POST":
        obj=User.objects.get(user_id=idd)
        obj.name = request.POST.get('name')
        obj.gender = request.POST.get('gnd')
        obj.age = request.POST.get('age')
        obj.location = request.POST.get('lc')
        obj.phone_number = request.POST.get('pn')
        obj.email = request.POST.get('ad')
        obj.save()
        return vupdate(request)
    return render(request,'user/update_user.html',context)

