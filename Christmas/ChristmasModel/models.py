# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models

# Create your models here.
class RefModel(models.Model):
    name=models.CharField(max_length=100)
    href=models.CharField(max_length=500)
    class_name=models.CharField(max_length=100)
