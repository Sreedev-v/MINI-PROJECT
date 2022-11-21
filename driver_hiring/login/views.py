from typing import Dict

from django.http import HttpResponseRedirect
from django.shortcuts import render
from login.models import Login
# Create your views here.

def login(request):

    if request.method=='POST':

        uname=request.POST.get('unm')
        passw=request.POST.get('psw')
        obj=Login.objects.filter(username=uname,password=passw)
        tp=""
        for ob in obj:
            tp=ob.type
            uid=ob.uid
            if tp=='admin':
                # objlist = ""
                request.session["uid"]=uid
                return HttpResponseRedirect('/temp/admin/')
            if tp=='driver':
                request.session["uid"]=uid
                return HttpResponseRedirect('/temp/driver/')
            if tp=='user':
                if ob.status=="open":
                    request.session["uid"]=uid
                    return HttpResponseRedirect('/temp/user/')
        objlist="Username or password incorrect"
        context ={
            'msg':objlist
        }
        return render(request,'login/login.html',context)
    return render(request,'login/login.html')