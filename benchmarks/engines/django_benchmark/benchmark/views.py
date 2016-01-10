from django.http import HttpResponse
#from django.shortcuts import render

def index(request):
    return HttpResponse("Hello, world. You're at the polls index.")

def blank(request):
    return HttpResponse("")

def template(request):
    return HttpResponse("Hello, world. You're at the polls index.")

from benchmark.fibonacci import *
def fibonacci(request, value):
    answer = calculate_fibonacci(int(value))
    return HttpResponse(answer)