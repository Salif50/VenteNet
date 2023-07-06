# Generated by Django 4.1.1 on 2023-07-05 16:55

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('gestionProduit', '0002_alter_produit_date_expiration'),
    ]

    operations = [
        migrations.AddField(
            model_name='produit',
            name='information',
            field=models.TextField(blank=True, default='information sur le produit', null=True),
        ),
        migrations.CreateModel(
            name='Commentaire',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nom', models.CharField(max_length=128)),
                ('email', models.EmailField(max_length=254)),
                ('message', models.TextField()),
                ('produit', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='gestionProduit.produit')),
            ],
        ),
    ]