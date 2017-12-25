# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

# Create your models here.
class RefModel(models.Model):
    name=models.CharField(max_length=100)
    href=models.CharField(max_length=500)
    class_name=models.CharField(max_length=100)


class WorkModel(models.Model):
    name=models.CharField(max_length=100)
    href=models.CharField(max_length=500)
    fps=models.CharField(max_length=5)
    engine=models.CharField(max_length=10)
    platform=models.CharField(max_length=10)
    isdoc=models.CharField(max_length=10)
    islod=models.CharField(max_length=10)
    ispbr=models.CharField(max_length=10)
    iscollision=models.CharField(max_length=10)
    vertexcount=models.CharField(max_length=10)
    meshcount=models.CharField(max_length=5)
    texturecount=models.CharField(max_length=10)
    texturesize=models.CharField(max_length=10)
    materialscount=models.CharField(max_length=10)
    animcount=models.CharField(max_length=10)
    effectcount=models.CharField(max_length=10)
