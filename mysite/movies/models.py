from django.db import models

# Create your models here.
class Moives(models.Model):
    index = models.AutoField(primary_key=True)
    title = models.CharField(max_length=255)
    director = models.CharField(max_length=255)
    actor = models.CharField(max_length=255)
    time = models.CharField(max_length=255)
    region = models.CharField(max_length=255)
    typee = models.CharField(max_length=255)
    score = models.CharField(max_length=255)
    images = models.CharField(max_length=255)