from django.shortcuts import render,get_object_or_404,redirect
from gestionProduit.models import Produit,Categorie
# Create your views here.


def index(request):

     categories=Categorie.objects.all()
     produits=Produit.objects.all()
     context={
          'categories':categories,
          'produits':produits
     }


     
     return render(request,'gestionProduit/index.html',context)


def contact(request):

    return render(request,'gestionProduit/contact.html')


def search(request):

     if request.method=='POST':
          search=request.POST.get('search')
          produits=Produit.objects.filter(designation__icontains=search) | Produit.objects.filter(categorie__nom__icontains=search) | Produit.objects.filter(description__icontains=search)
          context={
               'produits':produits
          }
          return render(request,'gestionProduit/search.html',context)

     return render(request,'gestionProduit/search.html')


def detail(request,id):

     produit=get_object_or_404(Produit,pk=id)
     context={
          'produit':produit
     }



     return render(request,'gestionProduit/detail.html',context)


def ajouter_pannier(request,id):
     if 'pannier' not in request.session:
         request.session['pannier']={}

     pannier=request.session.get('pannier')

     produit=get_object_or_404(Produit,pk=id)
     if id not in pannier:
          pannier[id]={
               'designation':produit.designation,
               'prix':produit.prix,
               'image':produit.image.url,
               'id':produit.id

          }
     
     return redirect('index')




    

     
     
     
    
     
