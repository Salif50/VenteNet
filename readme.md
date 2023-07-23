# Documentation
## creation de du projet en django
`django-admin startproject VenteNet`
## creation de l'application
`python manage.py startapp gestionProduit`
## configuration du projet et l'application
`Dans le dossier de configuration du projet c'est à dire le dossier qui a même nom que le projet(VenteNet) on retrouve le fichier de configuration du projet `
## se fichier s'appel settings.py
`Une fois à l'interieur de ce fichier, on place le nom de l'application qu'on vient de créer(gestionProduit) à la fin de la liste INSTALLED_APP,`
`Toujours à l'interieur de ce fichier on declare les fichiers static et les media qui nous permettent de charger les images de notre , pour cela on declare des variable suivantes`
`MEDIA_URL='media/'`
`MEDIA_ROOT='media'`

# configuration de la base de donné mysql avec le projet 
` IL faut d'abord installer la dernière version de wamp,xamp,ou mamp sur votre machine selon votre systeme d'exploitation, puis on créer une base de donée mysql portant le nom ventenet`
## configuration dans le fichier settings.py
`Dans la section DATABASES à l'interieur du fichier settings.py on place les inforamations suivantes`
`DATABASES = { 
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'ventenet',
        'USER':'root',
        'PASSWORD':'',
         'OPTIONS':{
            'init_command':"SET sql_mode='STRICT_TRANS_TABLES'",
        }
        }
}`
`ventenet est le nom de la base de donnée crée`
`root est l'utilisateur par de wampserver ou xamp ou mamp`
`PASSWORD vous allez indiquer le mot de passe de wamp si vous en avez sinon vous laissez vide`
# creation des tables par defauts
`python manage.py makemigrations`
`python manage.py migrate`

# creation des tables du site

`on creer une table Categorie, une table Produit et une Commentaire à l'interieur du fichier models.py se trouvant dans l'application gestionProduit`
## Quelque type de champs en django
`models.CharField(max_length=taille) pour les chaines de caractères`
`models.FloatField() pour les réels `
`models.IntegerField() pour les entiers `
`models.DateField() pour les dates `
`models.TextField() pour les text long `
`models.ImageField(upload_to='%Y/%m/%d') pour les images `
`models.ForeignKey() pour les clés etrangères `
`models.EmailField() pour les email `
`models.ForeignKey() pour les clés etrangères `

# mise en relation des urls 
` A l'interieur du dossier de configuration (VenteNet) on ouvre le fichier urls.py puis on indique `
`from django.urls import path,include
from django.conf import settings
from django.conf.urls.static import static
urlpatterns = [
    path('admin/', admin.site.urls),
    path('',include('gestionProduit.urls'))
    
]+static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)
`
`Nous devons crée un fichier urls.py à l'interieur de l'application gestionProduit`

# configuration des templates
`à l'interieur de l'application (gestionProduit) on crée un dossier nommé tempates, puis à l'interieur de ce dossier templates on créer un sous dossier nommé gestionProduit (c'est dans ce sous dossier qu'on placera tous les fichier html)`

# configuration du dossier static
`Toujours à l'interieur de l'application gestionProduit on crée un dossier nommé static puis à l'interieur de ce dossier static on créer un sous dossier nommé gestionProduit à l'interieur du sous dossier gestionProduit on créer trois sous dossier qui sont css(pour les fichier css),js(pour les fichier javascript) et images(pour les images static)`

# chager les fichier static
## directives pour charger   {% static 'chemin' %}
`pour charger une images de façon static on doit placer à l'interieur du fichier html {% load static %} pour charger tous les tags static , à l'interieur des balises link et dans l'attribut href on indique  `
`href={% static 'gestionProduit/css/nomdufichier.css' %} pour les styles css, pour les images on cherche les balise img puis d'ans l'attribut src on indique `
`src={% static 'gestionProduit/images/nomduimage.extension' %} en fin pour les fichier javascript on cherche les balises script puis à l'interieur des balises script et dans l'attribut scr on indique  `
`src={% static 'gestionProduit/js/nomdufichier.js' %} `

# creation des views
` A l'interieur de l'application(gestionProduit) on ouvre le fichier views.py`
`on créer des fonctions qui renvoient les pages qu'on souhaite afficher, exemple pour afficher la page d'acceuil(index.html) et la page contact(contact.html) on créer des fonctions suivantes`
`def index(request):
    return render(request,'gestionProduit/index.html')`

` c'est comme ça nous allons créer pour les autres pages`

# associer url à une view
`on rentre dans le fichier urls.py de l'application et on associer une url à la view qu'on vient de créer`
` exemple pour la view index`
`from gestionProduit import views
from django.urls import path

urlpatterns = [

    path('',views.index,name="index"),
]`

# creation du super utilisateur
`python manage.py createsuperuser`
`puis indiquer le nom d'utilisateur, son email,et un mot de passe(à taper deux fois)`
# lancer le serveur
`python manage.py runserver`
# tester le projet
`On ouvre un navigateur puis on saisi localhost:8000`
## acceder à l'administration
`toujours dans le navigateur on tape localhost:8000/admin`
`puis on donne le nom du superuser crée et son mot de passe`
`pour voir les tables dans l'interface d'administration on dois les importer dans le fichier admin.py qui se trouve dans l'application gestionProduit`
`on indique ceci `
`from gestionProduit.models import Categorie,Produit `
`admin.site.register(Categorie)`
`admin.site.register(Produit)`

# Opération sur les model
`soit Produit la table produit`
## afficher tous les produits
`Produit.objects.all()`
## filtrer les produits
#### produit dont la desgination commence par 
`Produit.objects.filter(designation__contains=nom)`
`etc ...`

# gestion de pannier

## afficher le contenu du pannier utilisateur
`Nous devons recuperer tous les produits se trouvants dans request.session['pannier]`
`pour cela on doit verifier si la variable session à une clé pannier on tape`
`if 'pannier' in request.session:`
` puis on parcour pour recuperer tous les produits`

## Nombre d'article 

`nombre_produit=len(request.session['pannier])`

## vider le pannier

`request.session['pannier']={}`






