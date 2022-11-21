from django.shortcuts import render

# Create your views here.


def admin(request):
    return render(request,'temp/admin.html')


def driver(request):
    return render(request, 'temp/driver.html')

def user(request):
    return render(request,'temp/user.html')

def home(request):
    return render(request,'temp/home.html')