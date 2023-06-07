
from django.urls import path
from gestionProduit import views

urlpatterns = [
    path('',views.index,name='index'),
]
