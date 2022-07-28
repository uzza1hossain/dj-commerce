from django.http import HttpRequest
from django.http import HttpResponse
from django.shortcuts import render


def home(request: HttpRequest) -> HttpResponse:
    return render(request, "home.html")


def about_us(request: HttpRequest) -> HttpResponse:
    return render(request, "about_us.html")


def privacy(request: HttpRequest) -> HttpResponse:
    return render(request, "privacy.html")


def tos(request: HttpRequest) -> HttpResponse:
    return render(request, "tos.html")


def return_refund(request: HttpRequest) -> HttpResponse:
    return render(request, "return_refund.html")
