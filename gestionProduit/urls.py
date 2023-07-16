
from gestionProduit import views
from django.urls import path

urlpatterns = [

    path('',views.index,name="index"),
     path('contact/',views.contact,name="contact"),
     path('search/',views.search,name='search'),
     path('detail/<id>/',views.detail,name='detail'),
     path('ajouter/<id>/',views.ajouter_pannier,name='ajouter_pannier'),
     path('show_pannier/',views.show_pannier,name="show"),
    
    
    
    
]
