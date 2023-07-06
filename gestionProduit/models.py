from django.db import models

class Categorie(models.Model):
    nom=models.CharField(max_length=128)

    def __str__(self):
        return self.nom



class Produit(models.Model):
    designation=models.CharField(max_length=128)
    prix=models.FloatField()
    quantite=models.IntegerField()
    date_expiration=models.DateField(null=True,blank=True)
    description=models.TextField()
    image=models.ImageField(upload_to='%Y/%m/%d')
    categorie=models.ForeignKey(Categorie,on_delete=models.CASCADE)
    information=models.TextField(null=True,blank=True,default='information sur le produit')

    def __str__(self):
        return self.designation
    


class Commentaire(models.Model):
    nom=models.CharField(max_length=128)
    email=models.EmailField()
    message=models.TextField()
    produit=models.ForeignKey(Produit,on_delete=models.CASCADE)
