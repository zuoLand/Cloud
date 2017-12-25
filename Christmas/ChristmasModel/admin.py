# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin

from ChristmasModel.models import RefModel
from ChristmasModel.models import WorkModel

# Register your models here.
admin.site.register(RefModel)
admin.site.register(WorkModel)
