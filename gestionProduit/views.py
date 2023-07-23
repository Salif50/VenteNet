from django.shortcuts import render,get_object_or_404,redirect
from gestionProduit.models import Produit,Categorie
# Create your views here.


def index(request):

     #del request.session['pannier']
     pannier=0

     if 'pannier' in request.session:
         pannier=len(request.session['pannier'])
     

     categories=Categorie.objects.all()
     produits=Produit.objects.all()
     context={
          'categories':categories,
          'produits':produits,
          'nombre_produit':pannier
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


def ajouter_pannier(request, id):
    if 'pannier' not in request.session:
        request.session['pannier'] = {}

    pannier = request.session.get('pannier')

    produit = get_object_or_404(Produit, pk=id)
    if id not in pannier:
        pannier[id] = {
            'designation': produit.designation,
            'prix': produit.prix,
            'image': produit.image.url,
            'id': produit.id,
            'quantite':1
        }
    else:
        pannier[id]['quantite'] += 1  # Incrémentez la quantité si le produit existe déjà

    request.session.modified = True  # Marquer la session comme modifiée
    

    return redirect('show')



    
#la view qui permet d'afficher le contenu du pannier
def show_pannier(request):
    #la variable pour stocker les produit se trouvant dans la session
    produits = []
    montant=0
    # la variable pour stocker le nombre de produit dans la session
    nombre_produit=0
    pannier={}
    #tester si l'utilisateur possede de pannier
    if 'pannier' in request.session:
        pannier=request.session.get('pannier',{})

        # bloucle pour parcourir puis recuperer tous les produits dans la session
        for key in pannier:
            # recuperer les informations d'un produit 
            data_produit={
                'designation':pannier[key]['designation'],
                'prix':pannier[key]['prix'],
                'image':pannier[key]['image']
            }
            montant+=pannier[key]['prix']

            # ajout du produit dans la liste des produits
            produits.append(data_produit)

   
          
           
     
    # recuperation du nombre de produit
    nombre_produit=len(pannier) 
    context = {
        'produits': produits,
        'nombre_produit':nombre_produit,
        'montant':montant
        
    }

    

 

    return render(request, 'gestionProduit/pannier.html', context)

     
    
     
def clean(request):

    if 'pannier' in request.session:
        request.session['pannier']={}
        request.session.modified=True
    

    return redirect('show')